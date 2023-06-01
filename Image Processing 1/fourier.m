clc;clear;close all;
F1 = zeros(256);
F1(:,124:132)=1;
I = double(F1);
fo = abs(fft2(I));
F = fftshift(fo);
figure; imshow(abs(F),[],'InitialMagnification','fit');
colormap(gray); colorbar 
figure; imshow(log(1+abs(F)),[],'InitialMagnification','fit'); 
colormap(gray); colorbar 
figure; mesh(abs(F)); 
figure; mesh(log(1+abs(I)));
subplot(2,3,1);imshow(I);
title('tasvir asli');
subplot(2,3,2);imshow(abs(F),[],'InitialMagnification','fit');
colormap(gray); colorbar
title('fourier');
subplot(2,3,3);imshow(log(1+abs(F)),[],'InitialMagnification','fit'); 
colormap(gray); colorbar
title('fourier image with log10');
subplot(2,3,5);mesh(abs(F));
subplot(2,3,6);mesh(log(1+abs(F)));