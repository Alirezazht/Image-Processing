clc;clear;close all;
F1 = imread('checker.tif');
B = zeros(256);
B(1:128,1:128)=256;
B(1:128,128:256)=0;
B(128:256,1:128)=0;
B(128:256,128:256)=256;
F2 = im2bw(F1);
I = double(F2);
fo = abs(fft2(I));
F = fftshift(fo);
F8 = im2bw(B);
I1 = double(F8);
fo1 = abs(fft2(I1));
F111 = fftshift(fo1);
subplot(3,2,1);imshow(abs(F),[],'InitialMagnification','fit');
colormap(gray); colorbar
title('tasvir 1');
subplot(3,2,3);imshow(log(1+abs(F)),[],'InitialMagnification','fit'); 
colormap(gray); colorbar 
subplot(3,2,2);imshow(abs(F111),[],'InitialMagnification','fit');
colormap(gray); colorbar
title('tasvir 2');
subplot(3,2,4);imshow(log(1+abs(F)),[],'InitialMagnification','fit'); 
colormap(gray); colorbar 
subplot(3,2,5);mesh(log(1+abs(F)));
subplot(3,2,6);mesh(log(1+abs(F111)));
