clc;clear;close all;
g = imread('gantrycrane.png');
g1 = rgb2gray(g);
a1 = g1(118:221,76:174);
% g10 = imnoise(g1,'gaussian',0.01,0.002);
g10= imnoise(g1,'salt & pepper',0.1);
g2 = g10(118:221,76:174);
subplot(3,2,1);imshow(a1);
title('tasvir asli');
subplot(3,2,2);imshow(g2);
title('image with gaussian noise');
subplot(3,2,3);plot(a1(:,49));
subplot(3,2,4);plot(g2(:,49));
subplot(3,2,5);mesh(g1(118:221,76:174));
subplot(3,2,6);mesh(g10(118:221,76:174));

