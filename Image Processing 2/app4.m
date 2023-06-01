clc;clear;close all;
a = imread('gantrycrane.png');
g1 = rgb2gray(a);
% g2=a1(118:221,76:174);
g1 = im2double(a1);
hsize1=[0 -1 0;
       -1 4 -1
       0 -1 0 ];
hsize2=[-1 -1 -1;
       -1  8  -1
       -1 -1  -1];
hsize3=[0 -1  0;
       -1  5 -1
       0  -1 0]
I1 = imfilter(g1,hsize1);
I2 = imfilter(g1,hsize2);
I3 = imfilter(g1,hsize3);
minI1 = min(min(I1));
minI2 = min(min(I2));
minI3 = min(min(I3));
maxI1 = max(max(I1));
maxI2 = max(max(I2));
maxI3 = max(max(I3));
I11 = (I1-minI1)/(max(I1)-min(I1));
I22 = (I2-minI2)/(max(I2)-min(I2));
I33 = (I3-minI3)/(max(I3)-min(I3));
subplot(2,3,2);imshow(g1);
title('laplacian');
subplot(2,3,4);imshow(I11);
title('A');
subplot(2,3,5);imshow(I22);
title('B');
subplot(2,3,6);imshow(I33);
title('C');
% subplot(2,3,2);plot(g1(:,49));
% title('tasvir asli');
% subplot(2,3,4);plot(I1(:,49));
% title('A');
% subplot(2,3,5);plot(I2(:,49));
% title('B');
% subplot(2,3,6);plot(I3(:,49));
% title('C');