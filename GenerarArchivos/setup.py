from distutils.core import setup
import py2exe, sys, os
sys.argv.append('py2exe')

def getData (data,mainPath,pathApp):
    for root,dirs,files in os.walk (mainPath):
        path = root.split(os.sep)
        for file in files:
            if not file.endswith(".py"):
               fl = os.path.join(root,file)
               differencePath = os.path.relpath(root,mainPath)
               newPath = pathApp
               if differencePath != '.':
                   newPath = os.path.join(pathApp,differencePath)
               #print (newPath + " , " + fl)    
               data.append ((newPath,[fl]))
               #return data
    return data

Mydata_files = []
pathApp = 'data\\processing'
mainPath = 'C:\\Program Files\\QGIS 3.10\\apps\\qgis\\python\\plugins\\processing\\'
Mydata_files = getData (Mydata_files,mainPath,pathApp)

pathApp = 'data\\osgeo'
mainPath = 'C:\Program Files\\QGIS 3.10\\apps\\Python37\\Lib\\site-packages\\osgeo\\'
Mydata_files = getData (Mydata_files,mainPath,pathApp)

setup(
    data_files = Mydata_files,
    options = {
                    'py2exe': {
                            'bundle_files': 3,
                            'optimize': 2,
                            'includes': ['sip'],
                            'packages': ['qgis',"PyQt5","processing"],
                            'dist_dir': 'dist',
                            'skip_archive':False
                    }
               },
    console = ['mastermap.py'])

