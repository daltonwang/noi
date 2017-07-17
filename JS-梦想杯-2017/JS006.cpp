#include <cstdio>
#include <iostream>
#include <algorithm>
using namespace std;

int b[101]; 
int main()
{
	int n,R0,i,j,k;
	cin >>n>>R0; 
	int R[n],a[n];//,b[n];
	
	
	R[0]=R0;
	for(i=1;i<n;i++)
	{
		R[i]=(R[i-1]*6807+2831)%201701; 
//		cout << R[i]<<' '; 
	} 
//	cout << endl;
	
	for(i=0;i<n;i++)
	{
		R[i]=R[i]%100; 
		cout << R[i] <<' ';
	}
	cout <<endl;
	//***********************************************
	
	//1. 初始化b[n]
	for(i=0;i<=n;i++) {
		b[i]=i;
		cout << b[i]<< ' '; 
	}
	cout << endl;
	
	//2. 组合取数， 从100里面取k个数 
	int s=0;//格局总数 
	while(b[0]==0){
		s++;
		for(int k=1;k<=n;k++) cout<< b[k]<<' ';
		cout <<endl;
		 
		j=n;								//Set the j to the Tail
		while(b[j]==100-n+j) j--;
		b[j]++;
		for(i=j+1;i<=n;i++) b[i]=b[i-1]+1; 
	}
	cout << s <<"种格局"<<endl;; 
 
	
	
	 
	return 0; 
} 
