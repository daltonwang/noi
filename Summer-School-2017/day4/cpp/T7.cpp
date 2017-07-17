#include <bits/stdc++.h>

using namespace std;

int n,i,j,p,k,f;
int a[1010][1010];

int main()
{
	cin>>n;
	p=1;
	k=n*(n-1)/2+1;
	f=2;
	for (i=1;i<=n;i++)a[n+1-i][i]=k++;
	for (i=1;i<=n;i++)
	{
		for (j=1;j<=n;j++)
			cout<<a[i][j]<<' ';
		cout<<endl;
	}
	i=2,j=n;
	while (k<=n*n)
	{
		a[i][j]=k;
		cout<<i<<' '<<j<<' '<<k<<endl;
		a[n+1-i][n+1-j]=n*n+1-k;
		if (f==1)
		{
			i--;
			j++;
			if (j==n-p+1)f=2;
		}
		else if (f==2)
		{
			i++;
			if (i==n-p+1)f=3;
		}
		else if (f==3)
		{
			j--;
			if (j==p*2)f=1,p++;
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
