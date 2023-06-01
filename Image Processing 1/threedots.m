clc;clear;close all;
z = zeros(256);
z(128,128)=1;
z(128,64)=1;
z(128,192)=1;
F2 = im2bw(z);
I = double(F2);
fo = abs(fft2(I));
F = fftshift(fo);
subplot(2,3,1);imshow(z,[]);
title('tasvir asli');
subplot(2,3,2);imshow(abs(F),[],'InitialMagnification','fit');
colormap(gray); colorbar
title('fourier');
subplot(2,3,3);imshow(log(1+abs(F)),[],'InitialMagnification','fit'); 
colormap(gray); colorbar 
title('fourier image with log10');
subplot(2,3,6);mesh(log(1+abs(F)));