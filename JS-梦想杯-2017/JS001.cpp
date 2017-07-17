#include <cstdio>
#include <iostream>
#include <algorithm>
using namespace std;

int main()
{
	int x,y,t;
	double s;
	cin >> x >>y >>t;
	int s0=t*x;//乌龟先跑的 
	int y0=y-x;//兔子每秒追的距离 
	double t1=(double)s0/(double)y0;//兔子追击需要化的时间 
	s=(t1+t)*x; 
	 
	 
	cout << s0 << "  "<<y0;
	cout <<endl<<s	;
	return 0;
}

