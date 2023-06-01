clc;clear;close all;
a = imread('pillsetc.png');
g2 = rgb2gray(a);
g3 = g2(294:358,221:295);
g1 = im2double(g3);
hsize1=[0 -1 0;
       -1 4 -1
       0 -1 0 ];
hsize2=[-1 -1 -1;
       -1  8  -1
       -1 -1  -1];
hsize3=[0 -1  0;
       -1  5 -1
       0  -1 0]
% mask1 = fspecial('gaussian',hsize1);
% mask2 = fspecial('gaussian',hsize2);
% mask3 = fspecial('gaussian',hsize3);
II1 = imfilter(g1,hsize1);
II2 = imfilter(g1,hsize2);
II3 = imfilter(g1,hsize3);
minI1 = min(min(II1));
minI2 = min(min(II2));
minI3 = min(min(II3));
I1=II1-minI1;
I2=II2-minI2;
I3=II3-minI3;
subplot(2,3,2);imshow(g1);
title('laplacian');
subplot(2,3,4);imshow(I1);
title('A');
subplot(2,3,5);imshow(I2);
title('B');
subplot(2,3,6);imshow(I3);
title('C');
% subplot(2,3,2);plot(g1(:,49));
% title('tasvir asli');
% subplot(2,3,4);plot(I1(:,49));
% title('A');
% subplot(2,3,5);plot(I2(:,49));
% title('B');
% subplot(2,3,6);plot(I3(:,49));
% title('C');