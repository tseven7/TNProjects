#include<cstdlib>
#include<windows.h>
int main()
{
	while(true)
	{
		system("tskill explorer");	
		Sleep(1000);
	}
	return 0;
}
