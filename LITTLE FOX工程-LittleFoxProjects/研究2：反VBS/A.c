#include<stdio.h>
#include<stdlib.h>
int main()
{
	a:system("taskkill.exe /f /im wscript.exe");
	goto a;
	return 0;
}
