clc;clear;close all;
g = imread('gantrycrane.png');
imshow(g);
g1 = g(121:222,80:172)
hsize=[7,7];
mask= fspecial('average', hsize);
I=imfilter(g,mask,'replicate');
I1=imfilter(g1,mask,'replicate');
figure(1);
subplot(1,3,1);imshow(g);
subplot(1,3,2);imshow(I);
subplot(1,3,3);imshow(I1);
figure(2);
subplot(1,3,1);imhist(g);bar(g);
subplot(1,3,2);imhist(I);bar(I);
subplot(1,3,2);imhist(I1);bar(I1);