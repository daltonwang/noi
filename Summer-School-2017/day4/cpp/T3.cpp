#include <bits/stdc++.h>

using namespace std;

int n,x,y,i,j,k,f,p;
int a[1010][1010];

int main()
{
	cin>>n>>x>>y;
	i=1,j=n;
	f=-1;
	for (k=1;k<=n*n;k++)
	{
		a[i][j]=k;
		i-=f;
		j-=f;
		if (j==n+1)
		{
			j=n;
			f=-f;
		}
		else if (j==0)
		{
			i+=2,j=1;
			f=-f;
		}
		else if (i==n+1)
		{
			i=n,j-=2;
			f=-f;
		}
		else if (i==0)
		{
			i=1;
			f=-f;
		}
	}
	for (i=1;i<=n;i++)
	{
		for (j=1;j<=n;j++)
			cout<<a[i][j]<<' ';
		cout<<endl;
	}
	return 0;
}
