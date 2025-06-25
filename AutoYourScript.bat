:: AutoYourScript-ES

@echo off
setlocal

:: Define el color del texto
color f0

:: Define como quieres que se llame la carpeta
set "profile_name=temporal-archives"

:: Define donde tienes chrome
set "perfil_path=%LOCALAPPDATA%\Google\Chrome\%profile_name%"

:: Crear la carpeta del perfil si no existe
if not exist "%perfil_path%" (
    mkdir "%perfil_path%"
    echo Bienvenido, el perfil se ha creado correctamente, para volver abrirlo tienes que ejecutarlo otra vez.
)

:: Iniciar Chrome con el perfil personalizado
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --user-data-dir="%perfil_path%" --profile-directory="%profile_name%"

::Inicia las paginas que quieras 
echo Chrome se ha iniciado con el perfil %profile_name% correctamente
pause
endlocal
