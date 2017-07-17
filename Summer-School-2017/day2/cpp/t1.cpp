#include <cstdio>
#include <iostream>
#include <algorithm>
using namespace std;

int main()
{
	int s,z,x,y,t,m;
	cin>>x>>y>>t;
	s=x*t;
	z=s*x/(y-x);
	m=z+s;
	cout<<m; 
	return 0;
}

