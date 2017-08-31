@ECHO ON
rem Updates all local folders from the ".\English" folder. It will only update files that have been changed. If you want to force copy files, then remove the "/m" option
for /f "delims=" %%i in ('dir /ad/s/b') do XCOPY ".\English" "%%i" /m /s /i /c /y
PAUSE