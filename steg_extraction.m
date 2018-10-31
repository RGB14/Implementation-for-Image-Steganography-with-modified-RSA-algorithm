clc;
disp('STEGANOGRAPY EXTRACTION FOR THESIS | SDP2');
disp('Stego-Object found');
clear all; close all;
x=imread('RSA_out.png');  
disp('Key Image found');
y=imread('original.jpeg');   
y= rgb2gray(y);
y = medfilt2(y);
x=uint16(x);
y=uint16(y);   

[x_row, x_col]=size(x);
b=0;k=1;
%extraction loop
for i=1:x_row
    for j=1:x_col
        if(x(i,j)>=y(i,j))
            a=x(i,j)-y(i,j);
        else
            a=256+x(i,j)-y(i,j);
        end
        
        if(a~=0)
            z(k)=uint8(a);
            k=k+1;
        else
            b=1;
            break;
        end
    end
    if(b==1)
        break;
    end
end

disp('Text message extracted');
fid=fopen('extraction.txt','w'); 
for i=1:k-1
    fprintf(fid,'%c',z(i)); 
end
