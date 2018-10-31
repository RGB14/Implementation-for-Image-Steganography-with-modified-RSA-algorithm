clc;
disp('RSA DECRYPTION');
disp('Decryption using RSA Algorithm');
clear all; close all;
p = input('\nEnter the value of p: ');
q = input('\nEnter the value of q: ');
[Pk,Phi,d,e] = intialize(p,q);
fileID = fopen('cipher.txt','r');
M = fscanf(fileID, '%d');
fclose(fileID);
x=length(M);

%Decryption
for j= 1:x
   message(j)= crypt(M(j),Pk,d); 
end
disp('Decrypted ASCII of Message:');
disp(message);
disp(['Decrypted Message is: ' message]);
disp('Decrypted text file generated');
fid=fopen('readable.txt','w'); 
fprintf(fid,'%c',message); 
