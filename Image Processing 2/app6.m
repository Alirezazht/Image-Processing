clc;clear;close all;
a = imread('pillsetc.png');
a1 = rgb2gray(a);
g1 = a1(221:280,312:390);
hsize1=[3,3];
hsize2=[3,3];
hsize3=[3,3];
mask1 = fspecial('gaussian',hsize1,1);
mask2 = fspecial('gaussian',hsize2,2);
mask3 = fspecial('gaussian',hsize3,3);
I1 = imfilter(g1,mask1,1);
I2 = imfilter(g1,mask2,2);
I3 = imfilter(g1,mask3,3);
subplot(2,3,2);imshow(g1);
title('guassian');
subplot(2,3,4);imshow(I1);
title('sigma=1');
subplot(2,3,5);imshow(I2);
title('sigma=2');
subplot(2,3,6);imshow(I3);
title('sigma=3');
% subplot(2,3,2);plot(g1(:,49));
% title('tasvir asli');
% subplot(2,3,4);plot(I1(:,49));
% title('A');
% subplot(2,3,5);plot(I2(:,49));
% title('B');
% subplot(2,3,6);plot(I3(:,49));
% title('C');