#include<stdio.h>
#include<conio.h>
#include<string.h>
int main()
{
    char plain[20]={'\0'},ciper[20]={'\0'},key[20]={'\0'},rt[20]={'\0'};
    int i,j;

    printf("\n Enter the plain text:");
    scanf("%s",plain);
    printf("\n Enter the key:");
    scanf("%s",key);


    j=0;
    for(i=strlen(key);i<strlen(plain);i++)
	    {
	    if(j==strlen(key))
		    {
		    	j=0;
		    }
	    key[i]=key[j];
	    j++;
	    }
    
	printf("\n----------------------\n");
    for(i=0;i<strlen(plain);i++)
    {
        ciper[i]=(((plain[i]-97)+(key[i]-97))%26)+97;
    }
    printf("\n \n Cipher text is:%s",ciper);

    for(i=0;i<strlen(ciper);i++)
    {
	    if(ciper[i]<key[i])
	    {
	        rt[i]=26+((ciper[i]-97)-(key[i]-97))+97;
	    }
	    else
	        rt[i]=(((ciper[i]-97)-(key[i]-97))%26)+97;
	    }
    printf("\n \n Plain text is:%s",rt);
    getch();
}
