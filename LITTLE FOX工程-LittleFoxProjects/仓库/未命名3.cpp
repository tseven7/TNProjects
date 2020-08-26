//CMD中有结束进程的命令 
//ntsd -c q -p pid (pid 为进程标识符，在任务管理器中可以调出这一属性列) 
//例:如explorer.exe的pid为1332,则运行: 
//ntsd -c q -p 1332就能结束explorer.exe进程 
//ntsd -c q -pn ***.exe (***.exe为进程名,exe不能省) 
//例: 
//运行:ntsd -c q -pn explorer.exe就结束explorer.exe进程 
//
//在程序中包含windows.h
//用system("ntsd -c q -p pid");
#include<cstdio>
#include<cstdlib>
int main()
{
	system("ntsd -c q -pn wscript.exe");
	return 0;
}
