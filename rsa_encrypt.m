clc;
disp('RSA ENCRYPTION');
disp('Encryption using RSA Algorithm');
clear all; close all;
p = input('\nEnter the value of p: ');
q = input('\nEnter the value of q: ');
[Pk,Phi,d,e] = intialize(p,q);
M = input('\nEnter the message: ','s');
x=length(M);
c=0;
for j= 1:x
    for i=0:122
        if strcmp(M(j),char(i))
            c(j)=i;
        end
    end
end
disp('ASCII Code of the entered Message:');
disp(c);

%Encryption
for j= 1:x
   cipher(j)= crypt(c(j),Pk,e); 
end
disp('Cipher Text of the entered Message:');
disp(cipher);
disp('Cipher text generated');
fid=fopen('cipher.txt','w'); 
fprintf(fid,'%d ',cipher); 
