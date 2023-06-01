clc;clear;close all;
F1=imread('DSC00278.tif');
w1 = imread('LOC009_11.tif');
f111 = rgb2gray(F1);
f222 = rgb2gray(w1);
% F2 = im2bw(F1);
I1 = im2double(f111);
f3 = fft2(I1);
FI1=fftshift(f3);
% w2 = im2bw(w1);
w3 = im2double(f222);
w9 = fft2(w3);
w4=fftshift(w9);
LPB5=ones(3672,4896);
for i=1:3672
    for j=1:4896
        LPB5(i,j)=1-(exp(-((i-1836)^2+(j-2448)^2)/15.68));
    end
end
LPB51=ones(2166,2903);
for i=1:2166
    for j=1:2903
        LPB51(i,j)=1-(exp(-((i-1083)^2+(j-1452)^2)/15.68));
    end
end
f1=ifft2(ifftshift(FI1.*LPB5));
f2=ifft2(ifftshift(w4.*LPB51));
figure;
subplot(1,2,1);imshow(f1);
subplot(1,2,2);imshow(f2);