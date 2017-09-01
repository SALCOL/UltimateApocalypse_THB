@ECHO ON
rem Updates all local folders from the ".\English" folder.
for /f "delims=" %%i in ('dir /ad/s/b') do XCOPY ".\English" "%%i" /s /i /c /y
PAUSE