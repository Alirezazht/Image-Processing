clc;clear;close all;
g = imread('gantrycrane.png');
g1 = rgb2gray(g);
g12=g1(118:221,76:174);
g10 = imnoise(g1,'gaussian',0.01,0.002);
g11= imnoise(g1,'salt & pepper',0.1);
g2 = g10(118:221,76:174);
g3 = g11(118:221,76:174);
I1 = medfilt2(g2);
I2 = medfilt2(g3);
mask1=fspecial('average');
I3=imfilter(g2,mask1);
mask2=fspecial('gaussian');
I4=imfilter(g2,mask2);
subplot(4,2,1);imshow(g2);
title('gaussian noise');
subplot(4,2,3);imshow(I3);
title('filterd by average');
subplot(4,2,5);imshow(I4);
title('filterd by gaussian');
subplot(4,2,7);imshow(I1);
title('filterd by median');
subplot(4,2,2);plot(g2(:,49));
subplot(4,2,4);plot(I3(:,49));
subplot(4,2,6);plot(I4(:,49));
subplot(4,2,8);plot(I1(:,49));

% I3 = medfilt2(I2);
% I4 = medfilt2(I3);
% I5 = medfilt2(I1);
% I6 = medfilt2(I5);
% subplot(4,2,2);imshow(g3);
% title('noise salt&pepper');
% subplot(4,2,4);imshow(I2);
% title('1 median filter');
% subplot(4,2,6);imshow(I3);
% title('2 median filter');
% subplot(4,2,8);imshow(I4);
% title('3 median filter');
% subplot(4,2,1);imshow(g2);
% title('gaussian noise');
% subplot(4,2,3);imshow(I1);
% title('1 median filter');
% subplot(4,2,5);imshow(I5);
% title('2 median filter');
% subplot(4,2,7);imshow(I6);
% title('3 median filter');
% subplot(3,2,1);imshow(g2);
% title('gaussian noise');
% subplot(3,2,2);imshow(g3);
% title('salt & pepper noise');
% subplot(3,2,3);imshow(I1);
% title('median filter');
% subplot(3,2,4);imshow(I2);
% title('median filter');
% subplot(3,2,5);plot(I1(52,:));
% subplot(3,2,6);plot(I2(52,:));