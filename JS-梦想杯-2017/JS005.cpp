#include <cstdio>
#include <iostream>
#include <algorithm>
using namespace std;
int pattern[100000]; 


int main()
{
	int n,R0,i,j,k;
	cin >>n>> k >> R0; 
	int R[n],a[n];
	
	R[0]=R0;
	for(i=1;i<n;i++)
	{
		R[i]=(R[i-1]*6807+2831)%201701; 
//		cout << R[i]<<' '; 
	} 
//	cout << endl;
	
	for(i=0;i<n;i++)
	{
		a[i]=R[i]%4; 
		//cout << a[i] <<' ';
	}
	//cout <<endl;
	
	int data0=0;
	for(i=0;i<=n-k;i++)
	{
		data0=0; 
		for(j=i;j<=i+k-1;j++)
		{
			data0=data0*10+a[j];
		}
		//cout << data0 << endl;
		pattern[i]=data0;
	}
	
	sort(pattern,pattern+n-k+1);
	
	int s=1;
	for(i=1;i<=n-k;i++)
	{
		if(pattern[i]!=pattern[i-1]) s++;
	}
	
	cout<< s;


	return 0;
}

