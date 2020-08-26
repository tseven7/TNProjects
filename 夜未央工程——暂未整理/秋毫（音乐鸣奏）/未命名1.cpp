#include<iostream>
#include<windows.h>
using namespace std;
enum fy
{
	d1 = 262, d1_ = 277, d2 = 294, d2_ = 311, d3 = 330, d4 = 349, d5 = 392, d5_= 415,
	d6 = 440, d6_= 466, d7 = 494, z1 = 523, z1_ = 554, z2 = 578, z2_ = 622, z3 = 659,
	z4 = 698, z4_ = 740, z5 = 784, z5_ = 831, z6 = 880, z6_ = 932, z7 = 988, g1 = 1046,
	g1_ = 1109, g2 = 1175, g2_ = 1245, g3 = 1318, g4 = 1397, g4_ = 1480,
	g5 = 1568, g5_ = 1661, g6 = 1760, g6_ = 1865, g7 = 1976, yaya = 0
};
struct yf
{
	enum fy s;
	int t;
};
int main()
{
	while(1)
	{
 		int s=200;
		struct yf a[1000]=
		{
			{yaya,s},{z2,s/2},{z3,s/2},{z5,s/2+s},
			{yaya,s},{z2,s/2},{z3,s/2},{z5,s/2+s},
			{yaya,s},{z5,s},{z6,s/2+s},{z3,s/4},{z1,s/4},{z2,s/2+s+s}
        };
		struct yf *atop;
		atop = a;
		int n = 194;
		while(n--)
		{
			Beep(atop->s,atop->t*5);
			atop++;
		}
	}
	return 0;
}
