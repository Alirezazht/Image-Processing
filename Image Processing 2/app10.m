clc;clear;close all;
a = imread('pillsetc.png');
a1 = rgb2gray(a);
g1 = a1(48:132,56:117);
g2 = a1(221:280,312:390);
g3 = a1(294:358,221:295);
hsize1=[3,3];
hsize2=[3,3];
hsize3=[3,3];
mask1 = fspecial('gaussian',hsize1,100);
mask2 = fspecial('gaussian',hsize2,200);
mask3 = fspecial('gaussian',hsize3,500);
I1 = imfilter(g1,mask1);
I2 = imfilter(g1,mask2);
I3 = imfilter(g1,mask3);
I4 = imfilter(g2,mask1);
I5 = imfilter(g2,mask2);
I6 = imfilter(g2,mask3);
I7 = imfilter(g3,mask1);
I8 = imfilter(g3,mask2);
I9 = imfilter(g3,mask3);
subplot(3,3,1);plot(I1(42,:));
title('panjare1 sigma=1');
subplot(3,3,2);plot(I2(42,:));
title('pangare1 sigma=2');
subplot(3,3,3);plot(I3(42,:));
title('panjare1sigma=3');
subplot(3,3,4);plot(I4(30,:));
title('pangare2 sigma=1');
subplot(3,3,5);plot(I5(30,:));
title('pangare2 sigma=2');
subplot(3,3,6);plot(I6(30,:));
title('pangare2 sigma=3');
subplot(3,3,7);plot(I7(32,:));
title('pangare3 sigma=1');
subplot(3,3,8);plot(I8(32,:));
title('pangare3 sigma=2');
subplot(3,3,9);plot(I9(32,:));
title('pangare3 sigma=3');
figure;
subplot(3,1,1);plot(g1(42,:));
title('panjare1');
subplot(3,1,2);plot(g2(30,:));
title('pangare2');
subplot(3,1,3);plot(g3(32,:));
title('pangare3');