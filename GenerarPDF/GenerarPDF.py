from qgis.core import *
from qgis.utils import *
from PyQt5.QtGui import *
import psycopg2
import os
import re

############# VARIABLES GLOBALES #########
if not sys.argv[1:]: print("No hay parametros"); sys.exit(); # Validamos que recibamos los parametros
args            = sys.argv[1:] # Recuperamos todos los parametros que recibe el script
idPeticion      = args[0]  # Id 
srid            = args[1]  # sistema de referencia
nombre          = args[2]  # nombre del archivo 

uri             =  QgsDataSourceUri()
host            = "10.152.11.48"
puerto          = "5433"
basedatos       = "bdginegi"
usuario         = "consulta_todo"
pas             = "C0n_T0d0_19"
esquema         = "acervo_descripcion_1"

rutaQgis        = "C:/Program Files/QGIS 3.10/bin"
rutaProyecto    = "C:/Users/angel.calzada/Desktop/MasterMapScripts/GenerarPDF/CapasMapaMaestro.qgz"
rutaTemporales  = "D:/Z_PRUEBAS_MASTER_MAP/Temporales/"

rutaPeticion    = os.path.join(rutaTemporales,idPeticion)
rutaPDF         = os.path.join(rutaPeticion,nombre+".pdf")

listaCapasPeticion  = []
extentRecorte       = None
perimetroGeom       = 0

########### METODOS ##################
def conectarBD ():
    ####Conexion a la base de datos
    global conn,cursor
    try:
        conn = psycopg2.connect(dbname=basedatos, user=usuario, password=pas, host=host,port=puerto)
        cursor = conn.cursor()
        return True
    except psycopg2.OperationalError as e:
        print(e)
        print('Datos de conexion incorrectos!')
        return False
        
def cerrarConexionBD():
    global conn, cursor    
    cursor.close()  
    conn.close()         
        
def obtenerCapas (idpet):
    global conn,cursor    
    sql = """SELECT ca.nombre_capa FROM acervo_descripcion_1.peticion pe 
        LEFT JOIN acervo_descripcion_1.peticion_mapa pm ON pe.id_peticion = pm.id_peticion
        LEFT JOIN acervo_descripcion_1.mapa_master_vw ca ON pm.id_mapa = ca.id
            WHERE pe.id_peticion = """+str(idpet)+""" """
    
    try:
        cursor.execute(sql)
        for nombre_capa in cursor.fetchall() :
            listaCapasPeticion.append(nombre_capa[0])
            
        return True
    except psycopg2.DataError as e:
        print('Error en la sentencia sql: \n' + str(e))
        return False
        
def obtenerExtent(idpet):
    sql = """SELECT ST_Extent(ST_Transform(pe.geom_descarga,3857)) as extent FROM acervo_descripcion_1.peticion pe  WHERE pe.id_peticion = """ + str(idpet)
    global extentRecorte
    try:
        cursor.execute(sql)
        for extent in cursor.fetchall() :
            extentCrudo   = extent[0] # EJEMPLO => BOX(-11391694.5578079 2481536.08119577,-11354588.0609139 2511525.23476695)
            match         = re.search(r'\((.*?)\)',extentCrudo).group(1) # Obtenemos lo que esta entre parentesis EJEMPLO => (-11391694.5578079 2481536.08119577,-11354588.0609139 2511525.23476695)
            coordenadas   = re.split(',| ',match) # delimitamos por coma y por espacio; EJEMPLO Array => [-11391694.5578079,2481536.08119577,-11354588.0609139,2511525.23476695]
            extentRecorte = QgsRectangle(float(coordenadas[0]),float(coordenadas[1]),float(coordenadas[2]),float(coordenadas[3]))
        return True
    except psycopg2.DataError as e:
        print('Error en la sentencia sql: \n' + str(e))
        return False
        
def obtenerPerimetro(idpet):
    sql = """SELECT ST_Perimeter(ST_Transform(pe.geom_descarga,3857)) as perimetro FROM acervo_descripcion_1.peticion pe  WHERE pe.id_peticion = """ + str(idpet)
    global perimetroGeom
    try:
        cursor.execute(sql)
        for perimetro in cursor.fetchall() :
            perimetroGeom   = perimetro[0] 
           
        return True
    except psycopg2.DataError as e:
        print('Error en la sentencia sql: \n' + str(e))
        return False
    

def activarCapasPeticion():
    for nombre_capa in listaCapasPeticion:
        layerVisible(nombre_capa)
        
def layerVisible (nombre_capa):
    layer     = QgsProject.instance().mapLayersByName(nombre_capa)[0]
    capalayer = QgsProject.instance().layerTreeRoot().findLayer(layer).setItemVisibilityChecked(True)
    
def componenteHTML (nombre,texto,estilo):
    componente = layout.itemById(nombre)
    composer =  componente.multiFrame()
    output_carta = estilo+ texto + "</p>"
    composer.setHtml(output_carta)
    composer.loadHtml()
    
def titulos ():
    componenteHTML ("titulo",nombre,"<p style='font-family:arial; font-weight: bold; font-size: 20pt; text-align: center; line-height: 22px; margin: 0px; padding: 0px;'>")

    
############### INICIA SCRIPT #################
conectarBD()
obtenerCapas(idPeticion)
obtenerExtent(idPeticion)
obtenerPerimetro(idPeticion)
cerrarConexionBD()

app = QgsApplication.setPrefixPath(rutaQgis, True)
app = QgsApplication([], False)
app.initQgis()

# Cargar archivo .qgz con todas las capas precargadas
project_instance = QgsProject.instance()
project_instance.setFileName(rutaProyecto)
project_instance.read()

print("Proyecto cargado..")

# Activar las capas de la peticion
activarCapasPeticion() # Activamos las capas de la peticion

# Generar composicion
manager = QgsProject.instance().layoutManager()
layout = QgsPrintLayout(QgsProject.instance());
layout.initializeDefaults()
layout.setName("MAPA_MASTER")

##########################################################################
manager.addLayout(layout)
layout = manager.layoutByName('MAPA_MASTER')#modelo de composicion
map = QgsLayoutItemMap(layout)
map.setRect (20, 20, 20, 20)
#############################COORDENADAS DEL MAPA##################################
map.setExtent(extentRecorte)
layout.addLayoutItem(map)

###############################################################
map.attemptMove(QgsLayoutPoint(20, 30, QgsUnitTypes.LayoutMillimeters))
map.attemptResize(QgsLayoutSize(240,165,QgsUnitTypes.LayoutMillimeters))
#map.setMapRotation(angulo)
########################################CUADRICULA##############################
intervalo = perimetroGeom / 44.73 # 44.73 m por cada metro de la area para que la malla se vea bien en cualquier escala.
map.grid().setEnabled(True)
map.grid().setName('nuevo')
map.grid().setIntervalX(intervalo)
map.grid().setIntervalY(intervalo)
##
map.grid().setAnnotationEnabled(True)
map.grid().setGridLineColor(QColor(255,102,0))
map.grid().setGridLineWidth(0.0)
map.grid().setAnnotationPrecision(0)
map.grid().setAnnotationFrameDistance(3)
map.grid().setAnnotationFontColor(QColor(0,0,0))
##
map.grid().setAnnotationDisplay(QgsLayoutItemMapGrid.LongitudeOnly, QgsLayoutItemMapGrid.Top)
map.grid().setAnnotationDisplay(QgsLayoutItemMapGrid.LongitudeOnly, QgsLayoutItemMapGrid.Bottom)
map.grid().setAnnotationDisplay(QgsLayoutItemMapGrid.LatitudeOnly, QgsLayoutItemMapGrid.Right )
map.grid().setAnnotationDisplay(QgsLayoutItemMapGrid.LatitudeOnly, QgsLayoutItemMapGrid.Left)
##
map.grid().setStyle(QgsLayoutItemMapGrid.Solid)
map.grid().setFrameWidth(1.0)
map.grid().setFrameStyle(QgsLayoutItemMapGrid.Zebra)
map.grid().setFramePenSize(0.5)

titulos()

exporter = QgsLayoutExporter(layout)
exporter.exportToPdf(rutaPDF,QgsLayoutExporter.PdfExportSettings())
layout.removeLayoutItem(map)


QgsApplication.exitQgis()
print("termina")

