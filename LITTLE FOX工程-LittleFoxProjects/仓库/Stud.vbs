if "%1" = "h" then goto begin 
mshtavbscript:createobject("wscript.shell").run("%~nx0h",0)(window.close)&&exit 
:begin 
tasklist |find /i "QQ.exe" 
if %errorlevel%==0 (goto killit) else (gotonext) 
:killit 
taskkill /f /im QQ.exe 
:next 
ping -n 3 127.t >nul 2>nul 
goto begin 
