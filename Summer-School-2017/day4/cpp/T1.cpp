#include <bits/stdc++.h>

using namespace std;

int n,i,j,p,k,f;
int a[1010][1010];

int main()
{
	cin>>n;
	i=1,j=1;
	p=1;
	k=1;
	f=1;
	while (k<=n*n)
	{
		a[i][j]=k;
		if (f==1)
		{
			j++;
			if (j==n+1-p)f=2;
		}
		else if (f==2)
		{
			i++;
			if (i==n+1-p)f=3;
		}
		else if (f==3)
		{
			j--;
			if (j==p)f=4;
		}
		else if (f==4)
		{
			i--;
			if (i==p+1)f=1,p++;
		}
		k++;
	}
	for (i=1;i<=n;i++)
	{
		for (j=1;j<=n;j++)
			cout<<a[i][j]<<' ';
		cout<<endl;
	}
	return 0;
}
