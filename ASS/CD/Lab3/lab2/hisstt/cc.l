%option noyywrap
%{
	#include<stdio.h>

	#include<string.h>
%}

%%


%%
char *text;
int main()
{

text=(char *)malloc(100*sizeof(char));//The text array stores the entered string by the user and we assume max text size is 99
char *word=(char *)malloc(10*sizeof(char));//We create 2 more arrays word and temp to store the wors ands we assume max word size is 10
char *temp=(char *)malloc(10*sizeof(char));
printf("\nEnter the text of max length 99 and max length of any word should be 10\n");
gets(text);//use gets to input the line of text
int len=0;//works as counter variable to move through text
int words=0;//store total number of words
int unique=0;//count unique wors
while(len<strlen(text))
{
words++;
sscanf(text+len,"%s",word);//scanf from appropriate length
int ctr=0;//gives correct scanning poistion
int freq=0;//set frequency zero
while(ctr<strlen(text))
{//again scan from the start
sscanf(text+ctr,"%s",temp);
if(strcmp(word,temp)==0)//compare the words
freq++;//increment
ctr=ctr+strlen(temp)+1;//scan the next word so sum up the length for previous word and 1 for the space
}
if(freq!=1)
printf("\n<%s> is not unique and has frequency %d\n",word,freq);//the word has frequency more than 1
else
{
    printf("\nThe word <%s> is unique\n",word);//unique
    unique++;
}
len=len+strlen(word)+1;//scan the next word so sum up the length for previous word and 1 for the space
}
printf("\nThe number of unique words is %d\n",unique);
printf("\nThe total number of words are %d\n",words);
getch();
}