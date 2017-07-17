#include <cstdio>
#include <iostream>
#include <algorithm>
using namespace std;


int main()
{
	int n,R0,i,j;
	cin >> n >> R0; 
	int R[n],a[n];
	
	R[0]=R0;
	for(i=1;i<n;i++)
	{
		R[i]=(R[i-1]*6807+2831)%201701; 
//		cout << R[i]<<' '; 
	} 
//	cout << endl;
	
	int s=0; 
	for(i=0;i<n;i++)
	{
		a[i]=R[i]%100+1; 
		s += a[i];
		cout << a[i]<<' '; 
	}
	cout <<endl; 
	
	sort(a,a+n);
	
	int totaltimes =0;
	int totalscore =0;
	for(i=0;i<n;i++)
	{
		totaltimes = totaltimes+a[i];//截止当前任务，总花费时间 
		totalscore =  totalscore +  totaltimes; 
		cout << a[i] << "  " <<totaltimes<<" "<<totalscore<<endl;
	}
	cout <<totalscore;

	
	return 0;
}

