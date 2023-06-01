clc;clear;close all;
g = zeros(256);
for i=1:256
    g(:,i)=i-1;
end
g2 = uint8(g);
g1= im2double(g2(87:143,138:185));
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
minI1=min(min(I1));
minI2=min(min(I2));
minI3=min(min(I3));
I11=I1-minI1;
I22=I2-minI2;
I33=I3-minI3
subplot(2,3,2);imshow(g1);
title('tasvir asli');
subplot(2,3,4);imshow(I11);
title('A');
subplot(2,3,5);imshow(I22);
title('B');
subplot(2,3,6);imshow(I33);
title('C');
