clc;clear;close all;
I = imread('sine_noised.png');
I1 = I(:,:,1);
I2 = im2double(I1);
I3 = fft2(I2);
I4 = fftshift(I3);
I4(100:103,220:222)=0;
I4(100:103,380:382)=0;
I4(175:185,300:302)=0;
I4(15:25,3013:302)=0;
I5 = ifftshift(I4);
I6 = ifft2(I5);
subplot(1,2,1);imshow(I);
title('tasvir asli');
subplot(1,2,2);imshow(I6);
title('hazf noise');