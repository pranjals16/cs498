// reading the CHILDES database 
#include<stdio.h>
int main()
{
	char c;
	scanf("%c",&c);
	while(c!=EOF)
	{
		if(c=='*')end  of file
		{
			scanf("%c",&c);
			if(c=='M')
			{
				scanf("%c",&c);
				if(c=='O')
				{
					scanf("%c",&c);
					if(c=='T')
					{	
						scanf("%c",&c);
						while(!((c<='Z'&& c>='A')|| (c<='z'&&c>='a')))
							scanf("%c",&c);
						printf("%c",c);
						while(c!='\n')
							{scanf("%c",&c);printf("%c",c);}
					}
				}
			}
		}
		else
			scanf("%c",&c);
	
	}
}

