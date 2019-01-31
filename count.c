#include<stdio.h>
int numberofpaths(int m,int n );
int main()
{
int m=3;
int n=3;

printf("%d",numberofpaths(m,n));
}
int numberofpaths(int m,int n ){
    int count[3][3] = {0};
    int i,j;
    for (i=0;i<m;i++){
        count[i][0]=1;
    }
    for(j=0;j<n;j++){
        count[0][j]=1;
    }
    for(i=1;i<m;i++){
        for(j=1;j<n;j++){
            count[i][j] = count[i-1][j] + count[i][j-1] +count [i-1][j-1];
        }
    }
    return count[m-1][n-1];
}


