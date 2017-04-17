@echo off
Setlocal EnableDelayedExpansion

set cad=%1
set sOutputFile=sarasa_deliver.xml

set fpath=C:\Dimensions\Workspace2\
echo %fpath%
set fpath=%fpath:"=%
echo %fpath%

set recorte= 
echo %recorte%
set recorte=%recorte:"=%
echo %recorte%

set PAR=%CD%
set PAR=!PAR:%fpath%=%recorte%!
set PAR=!PAR:\=/!

echo ¿Ingrese la actividad?
set /P iActivity=

echo dm deliver DeployAutomatico --directory C:\Dimensions\Workspace2 --requestId %iActivity% >>  "C:\Users\l0646482\n\tools\Armado de Deliver\"dm_%iActivity%.bat
echo dm deliver %PAR% --directory C:\Dimensions\Workspace2 --requestId %iActivity% >>  "C:\Users\l0646482\n\tools\Armado de Deliver\"dm_%iActivity%.bat




