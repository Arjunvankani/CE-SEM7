def Encryption(s,k):
     encstr=""
     for i in s:
         if(ord(i))>=65 and (ord(i)<=90):
             temp=(ord(i)+k)
             if temp>90:
                 temp=temp%90+64
             encstr=encstr+chr(temp)
         elif(ord(i))>=97 and (ord(i)<=122):
             temp=(ord(i)+k)
             if temp>122:
                 temp=temp%122+96
             encstr=encstr+chr(temp)
         else:
             encstr=encstr+chr(ord(i)+k)
     return encstr
    
def Decryption(k):
     p=Encryption(s,k)
     decstr=""
     for i in p:
         if((ord(i))>=65) and (ord(i))<=90:
             decstr=decstr+chr((ord(i) - k-65) % 26 + 65)
         elif((ord(i))>=97) and (ord(i))<=122:
             decstr=decstr+chr((ord(i) - k - 97) % 26 + 97)
         else:
             decstr=decstr+chr(ord(i)-k)
     return decstr
    
    
k = int(input("Enter key: "))
s = input("Enter the string to Encrypt and decrypt : ")

k=k%26

print("Encrypted String : ",Encryption(s,k))
print("Decrypted String : ",Decryption(k))