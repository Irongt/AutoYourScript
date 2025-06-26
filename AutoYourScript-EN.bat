::AutoYourScript

@echo off
setlocal

:: Set the text color
color f0

:: Define the folder name
set "profile_name=temporal-archives"

:: Define where Chrome is installed
set "perfil_path=%LOCALAPPDATA%\Google\Chrome\%profile_name%"

:: Create the profile folder if it doesn't exist
if not exist "%perfil_path%" (
    mkdir "%perfil_path%"
    echo Welcome, the profile has been successfully created. To open it again, you need to run this again.
    pause
)

:: Launch Chrome with the custom profile
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --user-data-dir="%perfil_path%" --profile-directory="%profile_name%"

:: Launch the websites you want
echo Chrome has started with the profile %profile_name% successfully
pause
endlocal
