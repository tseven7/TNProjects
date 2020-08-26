On Error Resume Next 
Dim wsh,ye 
set wsh=createobject("wscript.shell") 
for i=1 to 10 
wscript.sleep 700 
wsh.AppActivate("SBSBSBB") 
wsh.sendKeys "^v" 
wsh.sendKeys i 
wsh.sendKeys "SBSBSBBSSBBSSBSSBSSBSBBSSSSBBB" 
next 
wscript.quit