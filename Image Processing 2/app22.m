clc;clear;close all;
g = imread('gantrycrane.png');
g1 = rgb2gray(g);
g4 = g1(118:221,76:174);
g11= imnoise(g1,'salt & pepper',0.1);
g3 = g11(118:221,76:174);
subplot(3,2,1);imshow(g4);
title('tasvir asli');
subplot(3,2,2);imshow(g3);
title('image with salt&pepper noise');
subplot(3,2,3);plot(g4(:,49));
subplot(3,2,4);plot(g3(:,49));
subplot(3,2,5);mesh(g1(118:221,76:174));
subplot(3,2,6);mesh(g11(118:221,76:174));
