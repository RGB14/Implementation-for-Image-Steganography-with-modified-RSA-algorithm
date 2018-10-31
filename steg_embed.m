clc;
disp('STEGANOGRAPY EMBEDDING FOR THESIS | SDP2');
disp('Text file found');
clear all; close all;
FID = fopen('cipher.txt', 'rb');    
Str = fread(FID, [1, inf], 'char'); 
fclose(FID);        
Str=uint16(Str);    

disp('Cover Medium found');
x=imread('original.jpeg');   
x=rgb2gray(x);
x = medfilt2(x);
x=uint16(x);               
[x_row,x_col]=size(x);
c=numel(Str);   
a=1;

%embedding loop
for i=1:x_row
    for j=1:x_col
        if(a<=c)
            if(x(i,j)+Str(a)>255)
                temp=x(i,j)+Str(a)-256;
            else
                temp=x(i,j)+Str(a);
            end
            z(i,j)=uint8(temp);
        else
            z(i,j)=uint8(x(i,j));
        end
        a=a+1;
    end
end
disp('Stego-Object created');
imwrite(z,'RSA_out.png');

