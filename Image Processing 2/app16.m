clc;clear;close all;
g = imread('gantrycrane.png');
g1 = rgb2gray(g);
g2 = imnoise(g1,'salt & pepper',0.1);
g3 = g1(118:221,76:174);
g4 = g2(118:221,76:174);
subplot(3,2,1);imshow(g3);
title('tasvir asli');
subplot(3,2,2);imshow(g4);
title('tasvir noise dar');
subplot(3,2,3);plot(g3(52,:));
subplot(3,2,4);plot(g4(52,:));
subplot(3,2,5);mesh(g1(118:221,76:174));
subplot(3,2,6);mesh(g2(118:221,76:174));

