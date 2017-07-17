#include <bits/stdc++.h>

using namespace std;

int n,i,j,p,k,f;
int a[1010][1010];
int tot;

int main()
{
	cin>>tot;
	i=1;
	while (i*i<tot)i++;
	n=i;
	p=1;
	k=i*i;
	f=1;
	i=n,j=1;
	while (k!=0)
	{
		a[i][j]=k;
		if (f==1)
		{
			i--;
			if (i==p)f=2;
		}
		else if (f==2)
		{
			j++;
			if (j==n-p+1)f=3;
		}
		else if (f==3)
		{
			i++;
			if (i==n-p+1)f=4;
		}
		else if (f==4)
		{
			j--;
			if (j==p+1)f=1,p++;
		}
		k--;
	}
	for (i=1;i<=n;i++)
	{
		for (j=1;j<=n;j++)
			if (a[i][j]<=tot)
				cout<<a[i][j]<<' ';
			else
				cout<<' '<<' ';
		cout<<endl;
	}
	return 0;
}
