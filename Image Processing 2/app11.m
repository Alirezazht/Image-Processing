clc;clear;close all;
a = imread('pillsetc.png');
a1 = rgb2gray(a);
g1 = a1(48:132,56:117);
g2 = a1(221:280,312:390);
g3 = a1(294:358,221:295);
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
I4 = imfilter(g2,hsize1);
I5 = imfilter(g2,hsize2);
I6 = imfilter(g2,hsize3);
I7 = imfilter(g3,hsize1);
I8 = imfilter(g3,hsize2);
I9 = imfilter(g3,hsize3);
subplot(3,3,1);plot(I1(42,:));
title('A1');
subplot(3,3,2);plot(I2(42,:));
title('B1');
subplot(3,3,3);plot(I3(42,:));
title('C1');
subplot(3,3,4);plot(I4(30,:));
title('A2');
subplot(3,3,5);plot(I5(30,:));
title('B2');
subplot(3,3,6);plot(I6(30,:));
title('C2');
subplot(3,3,7);plot(I7(32,:));
title('A3');
subplot(3,3,8);plot(I8(32,:));
title('B3');
subplot(3,3,9);plot(I9(32,:));
title('C3');
figure;
subplot(3,1,1);plot(g1(42,:));
title('panjare1');
subplot(3,1,2);plot(g2(30,:));
title('pangare2');
subplot(3,1,3);plot(g3(32,:));
title('pangare3');