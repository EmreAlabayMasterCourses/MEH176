clc;clear all;close all;
im=imread('img.jpg');
R=double(im(:,:,1));
G=double(im(:,:,2));
B=double(im(:,:,3));
Y = 0.299*R + 0.587*G + 0.114*B;
U = -0.147*R - 0.289*G +0.436*B;
V =.615*R - 0.515*G -0.1*B;

outR= Y + 1.14*V;
outG= Y - 0.395*U -  0.581*V;
outB= Y + 2.032*U;

out_im(:,:,1)=outR;
out_im(:,:,2)=outG;
out_im(:,:,3)=outB;
figure;imshow(uint8([im,out_im]));


