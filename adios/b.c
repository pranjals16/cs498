#include<stdio.h>
int main()
{
	char c;
	
	while(scanf("%c",&c)!=EOF)
	{
		scanf("%c",&c);scanf("%c",&c);scanf("%c",&c);scanf("%c",&c);
		printf(" *  ");
		while(c!='\n')
		{
			printf("%c",c);scanf("%c",&c);
		}				
		printf("  # \n");
		
	}
	return 0;
}
