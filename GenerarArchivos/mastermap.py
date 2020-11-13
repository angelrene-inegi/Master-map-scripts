from qgis.core import *
from qgis.utils import *
from PyQt5 import QtWidgets, QtSql
from PyQt5.QtCore import QVariant
import psycopg2
from osgeo import ogr 
import os
from shutil import copyfile
    
#########################################################################
# Cargar libreria processing
from qgis.analysis import QgsNativeAlgorithms
import processing
from processing.core.Processing import Processing
#############################Definicion de Variables, Datos Conexion, Estilos############################################
if not sys.argv[1:]: print("No hay parametros"); sys.exit(); # Validamos que recibamos los parametros
args            = sys.argv[1:] # Recuperamos todos los parametros que recibe el script
idPeticion      = args[0]  # Id 
srid            = args[1]  # sistema de referencia
nombre          = args[2]  # nombre del archivo 
formatosal      = args[3]  # formato de salida

uri         =  QgsDataSourceUri()
QgsDataSourceUri()
host        = "10.152.11.48";
puerto      = "5433";
basedatos   = "bdginegi";
usuario     = "consulta_todo";
pas         = "C0n_T0d0_19";
esquema     = "acervo_descripcion_1";
server      = "10.152.11.48"
port        = "5433"
bd          = "bdginegi"
user        = "mapa_maestro"
psw         = "Mapa_mtro_20"
conn = None
cursor = None
geojson = None
listacapas  = []
listalayers  = []
capaslineas  = []
capaspuntos = []
capasareas = []
camposnopermitidos = []
result = None
union= None
db = None
layercut = None
ext = None
url = None
rutaTemporales  = "D:/Z_PRUEBAS_MASTER_MAP/Temporales/"
rutaPeticion    = os.path.join(rutaTemporales,idPeticion)
rutaQGIS        = "C:/Program Files/QGIS 3.10/bin"
rutaEstilos     = "C:/Users/angel.calzada/Desktop/MasterMapScripts/GenerarArchivos/estilos"

app = QgsApplication.setPrefixPath(rutaQGIS, True)
app = QgsApplication([], False)
app.initQgis()

def generaImagen (formato,nomimg):
   global url    
   wmsLayer_name = 'alta_res_1m'
   #url_with_params = 'url=http://10.152.11.51:82/alta_res_1m_NoDraft&crs=EPSG:6365&dpiMode=7&format=image/tiff&layers=alta_res_1m&styles'
   url_with_params = 'url='+ url + '_NoDraft&crs=EPSG:6365&dpiMode=7&format=image/tiff&layers=alta_res_1m&styles'
   wmsLayer = QgsRasterLayer(url_with_params,wmsLayer_name,'wms')
   wmsLayer.setExtent(ext)
   width =  3813 
   height = 2905
   renderer = wmsLayer.renderer()
   provider= wmsLayer.dataProvider()
   pipe = QgsRasterPipe()
   pipe.set(provider.clone())
   pipe.set(renderer.clone())  
   opts = ["COMPRESS=ZLEVEL","RASTER_TABLE="+nomimg] 
   if (formato == "GEOPACKAGE"): 
      projectGpkg = os.path.join(rutaPeticion,nombre +".gpkg")  
      ds = ogr.Open(projectGpkg, True)
      source = wmsLayer
      if source.isValid():
        provider = source.dataProvider()
        fw = QgsRasterFileWriter(projectGpkg)
        fw.setOutputFormat('gpkg')       
        fw.setCreateOptions(opts)
        pipe = QgsRasterPipe()
        if pipe.set(provider.clone()) is True:
            fw.writeRaster (pipe,width,height,ext,wmsLayer.crs(),QgsProject.instance().transformContext())
                
        ds = None 
   else:
        rutaRaster = os.path.join(rutaPeticion,nomimg +".tif") 
        file_writer = QgsRasterFileWriter( rutaRaster )
        opts = ["COMPRESS=LZW"] 
        file_writer.setCreateOptions(opts)
        file_writer.writeRaster(pipe,width,height,ext,wmsLayer.crs(),QgsProject.instance().transformContext())       
   

def generaPoligonocorte ():  
      global ext     
      layer = None
      geom = QgsGeometry.fromWkt(geojson.split(";")[1])
      layer = QgsVectorLayer('Polygon','test','memory')
      pr = layer.dataProvider()
      elem= QgsFeature()
      elem.setGeometry(geom)
      pr.addFeatures( [ elem ] )
      layer.updateExtents()  
      ext = layer.extent() 
      return layer

def generaListado (idpet):
    global conn,cursor    
    global listacapas
    global geojson
    global url
    url = ""
    listacapas = []
    geojson = None
    sql = """select nombre_esquema,nombre_capa from acervo_descripcion_1.mapa_master_vw where id in (select id_mapa  from acervo_descripcion_1.peticion_mapa where id_peticion = """+idpet+""")"""     
    try:
        cursor.execute(sql)
        for nombre_esquema,nombre_capa in cursor.fetchall() :
               if (nombre_esquema[0:5].lower() !=  "http:"):
                   listacapas = listacapas + [ nombre_esquema +"."+nombre_capa ]
               else:   
                   url = nombre_esquema                    
               #print( nombre_esquema,nombre_capa )
        #geojson = {"type":"MultiPolygon","coordinates":[[[[-101.999999978817,22.0000000622503],[-101.999999978936,21.7500000610337],[-102.333333229995,21.7500000611872],[-102.333333229738,22.0000000623255],[-101.999999978817,22.0000000622503]]]]}
        sql = """select ST_AsEWKT (geom_descarga) as geom from acervo_descripcion_1.peticion  where id_peticion = """+idpet       
        cursor.execute(sql)
        for geom in cursor.fetchall() :
            geojson = geom [0]
            break
        #print  (geojson)   
        return True
    except psycopg2.DataError as e:
        print('Error en la sentencia sql: \n' + str(e))
        return False

def clasificaListado (tipo):
      global capasareas 
      global capaspuntos 
      global capaslineas
      global listalayers
      listalayers  = []   
      capaslineas  = []
      capaspuntos = []
      capasareas = []
      try:
        for capa in listacapas:
          #sql = """SELECT attname,pg_catalog.format_type(atttypid,atttypmod) as \"Datatype\" FROM pg_catalog.pg_attribute WHERE attrelid in (select  relfilenode FROM pg_class  WHERE relowner in (select nspowner  from pg_catalog.pg_namespace where nspname = '"""+(capa.split(".")[0]).lower()+"""')and relname = '"""+(capa.split(".")[1]).lower()+"""') and attstattarget = -1 and pg_catalog.format_type(atttypid,atttypmod) = 'geometry'"""
          sql = """SELECT column_name,data_type FROM information_schema.columns WHERE table_schema = '"""+(capa.split(".")[0]).lower()+"""' and table_name = '"""+(capa.split(".")[1]).lower()+"""' and data_type = 'USER-DEFINED'"""
          geometria = ""
          cursor.execute(sql)
          #for attname,Datatype in cursor.fetchall() :
          #    geometria = attname
          #    break
          for column_name,data_type in cursor.fetchall() :
              geometria = column_name
              break      
          if (tipo == "2"):
              sql = """select GeometryType ("""+geometria+""") as tipogeo from """+capa+""" limit 1"""
              tipogeom = ""
              cursor.execute(sql)
              for tipogeo in cursor.fetchall() :
                  tipogeom = tipogeo [0]
                  break                
              if (tipogeom.lower() == "point" )  or  (tipogeom.lower() ==  "multipoint"):
                  capaspuntos = capaspuntos + [capa+"&"+geometria]
              if (tipogeom.lower() == "linestring") or (tipogeom.lower() == "multilinestring"):
                  capaslineas =  capaslineas + [capa+"&"+geometria]
              if (tipogeom.lower() == "polygon") or (tipogeom.lower() == "multipolygon"):
                  capasareas = capasareas + [capa+"&"+geometria]                  
          else:      
               listalayers  = listalayers + [capa+"&"+geometria]  
        return True
      except psycopg2.DataError as e:
        print('Error en la sentencia sql: \n' + str(e))
        return False               

def cerrarConexionBD():
    global conn, cursor    
    cursor.close()  
    conn.close()    


def conectarBD (server,port,bd,user,psw):
    ####Conexion a la base de datos
    global conn,cursor
    try:
        conn = psycopg2.connect(dbname=bd, user=user, password=psw, host=server,port=port)
        cursor = conn.cursor()
        return True
    except psycopg2.OperationalError as e:
        print(e)
        print('Datos de conexion incorrectos!')
        return False      

def conexionBD (server,port,bd,user,psw):             
             uri.setConnection(server,port,bd,user,psw)             
             db = QtSql.QSqlDatabase.addDatabase("QPSQL")
             if db.isValid():
                   db.setHostName(server)    
                   db.setDatabaseName(uri.database())
                   db.setPort(int(uri.port()))
                   db.setUserName(uri.username())
                   db.setPassword(uri.password())
                   db.open()                 
                   return db
             return None      
             
def conexion_BD (server,port,bd,user,psw):             
             uri.setConnection(server,port,bd,user,psw)             
             return None               
             
def elminaatributos (vector,tot):
    con = 0
    while (con < tot):
          vector.dataProvider().deleteAttributes([0])
          con = con + 1
    vector.updateFields()    
    return vector
    
def cambiavalor (vector,valor,total,pos):  
    fid = 0
    vector.startEditing() 
    while (fid <= total):   
          vector.changeAttributeValue(fid, pos, valor)          
          fid = fid + 1
    vector.commitChanges()
    return vector
    
def actualizavalorcampos (campo,condicion,campoinf,pos): 
    request = QgsFeatureRequest().setFilterExpression("\""+campo+"\" "+condicion)
    request.setSubsetOfAttributes([])
    request.setFlags(QgsFeatureRequest.NoGeometry)   
    selection = union.getFeatures(request)
    union.startEditing()
    #union.deleteFeatures([f.id() for f in selection])
    for f in selection:
        union.changeAttributeValue(f.id(), pos, f[campoinf]) 
    union.commitChanges()
    pass  
    
def empaqueta (capa,nomcapa):
    options = QgsVectorFileWriter.SaveVectorOptions() 
    options.actionOnExistingFile = QgsVectorFileWriter.CreateOrOverwriteLayer #Update mode
    options.EditionCapability = QgsVectorFileWriter.CanAddNewLayer 
    options.layerName = nomcapa 
    rutaGpkg = os.path.join(rutaPeticion,nombre+".gpkg")
    _writer = QgsVectorFileWriter.writeAsVectorFormat(capa, rutaGpkg, options)
    if _writer[0] == QgsVectorFileWriter.ErrCreateDataSource :                                     
       options.actionOnExistingFile = QgsVectorFileWriter.CreateOrOverwriteFile #Create mode
       _writer= QgsVectorFileWriter.writeAsVectorFormat(capa, rutaGpkg, options)  

    copiarEstiloGPKG(rutaGpkg,nomcapa)
    pass   
    
def generArchivosalida (layer,srid,nomcapa,formato): 
    epsg = QgsCoordinateReferenceSystem('EPSG:'+str(srid))
    #error = QgsVectorFileWriter.writeAsVectorFormat(layer,"D:/A_SHP/resultado/Prueba/"+nomcapa +".shp","UTF-8",epsg,driverName="ESRI Shapefile")
    error = None   
    rutaArchivo = os.path.join(rutaPeticion,nomcapa)
    if (formato == "KML"):
        error = QgsVectorFileWriter.writeAsVectorFormat (layer,rutaArchivo+".kml", "UTF-8",epsg,driverName="KML")      
    if (formato == "GEOJSON"):
        error = QgsVectorFileWriter.writeAsVectorFormat (layer,rutaArchivo+".geojson", "UTF-8",epsg,driverName="GEOJSON")              
    if (formato == "SHAPE"):
        error = QgsVectorFileWriter.writeAsVectorFormat (layer,rutaArchivo+".shp", "UTF-8",epsg,driverName="ESRI Shapefile")  

    copiarArchivoEstilo(nomcapa)
#    if error[0] == QgsVectorFileWriter.NoError:
#          print("success again!")    
    pass
    
def copiarEstiloGPKG(rutaGpkg,nomcapa):
    gpkg = rutaGpkg + "|layername="+nomcapa
    layer = QgsVectorLayer(gpkg, "TEMPORAL", "ogr")
    rutaEstilo = os.path.join(rutaEstilos,nomcapa+".qml") # Ruta del archivo de estilo de la capa 
    layer.loadNamedStyle(rutaEstilo) # Cargamos el estilo del archivo qml
    layer.triggerRepaint() # Aplicamos el estilo del qml
    layer.saveStyleToDatabase("new_style","estilo_defecto",True,"") # Guardamos el estilo en el GPKG por defecto
    
    
def copiarArchivoEstilo(nomcapa):
    rutaArchivoEstilo = os.path.join(rutaEstilos,nomcapa+".qml")
    rutaEstiloNuevo = os.path.join(rutaPeticion,nomcapa+".qml")
    try:
        copyfile(rutaArchivoEstilo, rutaEstiloNuevo)
    except IOError as e:
       print("Error no se pudo copiar el archivo de estilos")
       print(e)
    
    
def elminaatributo (vector,pos):
    vector.dataProvider().deleteAttributes([pos])
    vector.updateFields()    
    return vector  
    
def generaGpkg(nomcap,capas,srid,tipo,formato):
   listado = []
   global db     
   global union     
   global GpName
   global camposnopermitidos
   capasunir = []
   for capa in capas:
     global result      
     geometria = capa.split(".")[1].split("&")[1]    
     esquema = capa.split(".")[0] 
     capa =  capa.split(".")[1].split("&")[0]
     #print (esquema +" "+" "+capa+geometria)
     if (len (geometria) > 0):                     
         uri.setDataSource(esquema,capa,geometria)  
         vlayer = QgsVectorLayer(uri.uri(False), capa, "postgres")                                     
         result = processing.run ('native:clip', {'INPUT':  vlayer ,'OVERLAY': layercut,'OUTPUT': 'memory:'})['OUTPUT']
         if (formato == "SHAPE"):
             posicion = 0
             camposnopermitidos = []
             for field in result.fields(): 
                 #print (QgsField(field).name() + "---" + QgsField(field).typeName())
                 if (str (QgsField(field).typeName()).upper() == "BINARY"):
                     camposnopermitidos = camposnopermitidos + [str(QgsField(field).name())+"&"+str (posicion)]
                 posicion = posicion + 1       
             for campo in camposnopermitidos :
                 #print (campo.split ("&")[0]+"  "+campo.split ("&")[1])
                 result = elminaatributo (result,int (campo.split ("&")[1]))                                       
         if (result.featureCount() > 0): 
            if (tipo == '2'): 
               result.dataProvider().addAttributes([QgsField("describe", QVariant.String)])                                                                
               result.updateFields()
               totatributos = len (result.fields())    
               result = elminaatributos (result, (totatributos-1))
               result = cambiavalor (result,capa,result.featureCount(),0)                                             
               capasunir = capasunir + [result]                                         
            if (tipo  == '1'):
                lyrCRS = result.crs().authid()
                if ((len (str(srid)) > 0) and (('EPSG:'+str(srid)) !=  (str (lyrCRS)))):   
                    result = processing.run("native:reprojectlayer", {'INPUT': result ,'TARGET_CRS':QgsCoordinateReferenceSystem('EPSG:'+str(srid)),'OUTPUT':'memory:'})['OUTPUT']
                if (formato == "GEOPACKAGE"):
                    empaqueta (result,capa)  
                else:
                    generArchivosalida (result,srid,capa,formato)                            
   if ((len(capasunir) > 0) and (tipo  == '2')):  
      con = 0 
      union = None
      for layer in capasunir:                                
         if (con == 0):
             union = layer
         if (con == 1):  
             union = processing.run("native:union", {'INPUT':capasunir [0] ,'OVERLAY': capasunir [1],'OVERLAY_FIELDS_PREFIX':'','OUTPUT':'memory:'})['OUTPUT']                                     
             union.dataProvider().addAttributes([QgsField("descripcion", QVariant.String)])#vectorLyr.commitChanges()                                 
             union.updateFields()
             actualizavalorcampos ("describe","is none","describe_2",2)
             actualizavalorcampos ("describe","is not none","describe",2)     
             union = elminaatributos (union,2)                                
         if (con > 1):
             union = processing.run("native:union", {'INPUT':capasunir [con] ,'OVERLAY': union,'OVERLAY_FIELDS_PREFIX':'','OUTPUT':'memory:'})['OUTPUT']                                                                  
             actualizavalorcampos ("descripcion","is none","describe",1) 
             union = elminaatributos (union,1)                                      
         con = con + 1
      lyrCRS = union.crs().authid()                              
      if ((len (str(srid)) > 0) and (('EPSG:'+str(srid)) !=  (str (lyrCRS)))):   
          union = processing.run("native:reprojectlayer", {'INPUT': union ,'TARGET_CRS':QgsCoordinateReferenceSystem('EPSG:'+str(srid)),'OUTPUT':'memory:'})['OUTPUT']
      if (formato == "GEOPACKAGE"):
         empaqueta (union,nomcap)  
      else:
         generArchivosalida (result,srid,capa,formato)   
   return    
             
def generaAreasLineasPuntos (peticion,srid,nombre,formatosal): 
    global db
    global layercut   
    global listacapas
    global url
    tipo = "1" 
    band = False
    if (conectarBD (host,puerto,basedatos,usuario,pas)):
        band =  generaListado(peticion)
        cerrarConexionBD()
    if (band) and (conectarBD (server,port,bd,user,psw)) :  
        band = clasificaListado (tipo)
        cerrarConexionBD()
    if (band): 
        layercut = generaPoligonocorte()
        if (len (url) > 0):
            generaImagen (formatosal,nombre) 
            
        conexion_BD (server,port,bd,user,psw)
        if (tipo == "1"):         
            if (len (listalayers) > 0):            
                generaGpkg("",listalayers,srid,tipo,formatosal)    
        if (tipo == "2"): 
            if (len (capaspuntos) > 0):
               generaGpkg("Puntos",capaspuntos,srid,tipo,formatosal)
            if (len (capaslineas) > 0):           
               generaGpkg("Lineas",capaslineas,srid,tipo,formatosal) 
            if (len (capasareas) > 0):           
               generaGpkg("Areas",capasareas,srid,tipo,formatosal)        
    pass

    
#print ('INICIA')
Processing.initialize()
QgsApplication.processingRegistry().addProvider(QgsNativeAlgorithms())
generaAreasLineasPuntos(idPeticion,srid,nombre,formatosal)
#print ('TERMINA')
QgsApplication.exitQgis() 
