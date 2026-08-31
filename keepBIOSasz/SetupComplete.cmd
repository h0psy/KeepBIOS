@ECHO OFF
CD "%TEMP%"&CLS&@TITLE Post-Setup tasks
powershell -NoProfile -NonInteractive -ExecutionPolicy Bypass -File "%WINDIR%\Setup\Files\Change_MyProfile.ps1"
powershell -NoProfile -NonInteractive -ExecutionPolicy Bypass -File "%WINDIR%\Setup\Files\visual effects before logo.ps1"
regedit /S "%WINDIR%\Setup\Files\StopDU.reg"
rd /q /s "%WINDIR%\Setup\Files"
del /q /f "%0"
