#include <cstdio>
#include <iostream>
#include <algorithm>
#include <cmath> 
using namespace std;
#define _DEBUG_ 0 

int primedata[10000] ;//因为事先算过一遍是9681
 
bool isPrime(int a)
{
	int t;
	if (a<2) return false;
	t=sqrt(a);
	for(int i=2;i<=t;i++)
	{
		if (a%i==0) return false;
	}
	
	return true;
 } 
 
 int cacl(int a, int b)
 {
 	int c;
 	c=abs(a-b);
 	c=c%10;
 	if(c>5) c=10-c;
 	return c;
 }

int test()
{
	int a,b;
	while(1)
	{
		cin >> a >>b;
		cout << cacl(a,b) <<endl;
	}
	return 0;
}

int test2()
{
	int s=0;
	for(int i=0;i<1500;i++)
	{
		if(isPrime(i))
		{
			cout << i <<endl;
			s++;
		}
	}
	cout <<s;
	return 0;
 } 

int main()
{
	int i, j,k,data,mintimes,maxdata;
	int times,data0,data1,gewei0,gewei1;
	//cin >> data;
	//1. 将100000以内的素数全部计算出来，并且处方到primedata中 
	int s=0;
	for(i=0;i<100000;i++) 
	{
		if(isPrime(i)) 
		{
			primedata[s]=i;
			s++;
		}
	}
	//2. 获取进来的数
	cin>>data; 
	mintimes=50;//不可能到50 
	for(i=0;i<s;i++)
	{
		//2.1. 计算 i和data的距离
		times=0;
		data0=data;
		data1=primedata[i];
		for(j=0;j<5;j++)
		{
			gewei0=data0%10;
			gewei1=data1%10;
			times += cacl(gewei0,gewei1);
			data0=data0/10;
			data1=data1/10;
		 } 
		 //
		 if(times<mintimes) 
		 {
		 	maxdata=primedata[i];
		 	mintimes=times; 
		 } 
		 if((times==mintimes)&&(primedata[i]>maxdata)) 
		 	maxdata=primedata[i];
	} 
	
	cout <<maxdata<<" "<<mintimes;
	return 0;
}

