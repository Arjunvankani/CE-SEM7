#include<stdio.h>
#include<conio.h>
void main()
{
    char pt[30] ,c[27], ct[30];
    int i, j, index;
    printf("\n\nImplement Mono Alphabetic Cipher Encryption-Decryption.");
    printf("\nEnter Plain Text : ");
    gets(pt);

    printf("\nEnter Key From a to z : \n");
    for(i = 0; i < 26; i++)
    {
        printf("%c-", i + 97);
        c[i] = getch();
        printf("%c , ", c[i]);
    }

    for(i = 0; i < strlen(pt); i++)
    {
        index = pt[i] - 97;
        ct[i] = c[index];
    }

    printf("\n\nCipher Text is : ");
    for(i = 0; i < strlen(pt); i++)
    {
        printf("%c", ct[i]);
    }
    getch();
}
