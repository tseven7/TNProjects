dim WSHshell 
set WSHshell = wscript.createobject("wscript.shell") 
do
wscript.sleep 2500 
WSHshell.SendKeys "%{F4}" 
loop 
