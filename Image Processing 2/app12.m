clc;clear;close all;
g = zeros(256);
for i=1:256
    g(:,i)=i-1;
end
g2= uint8(g);
g1= g2(87:143,138:185);
hsize1=[1,3];
hsize2=[3,1];
hsize3=[7,7];
mask1 = fspecial('average',hsize1);
mask2 = fspecial('average',hsize2);
mask3 = fspecial('average',hsize3);
I1 = imfilter(g1,mask1);
I2 = imfilter(g1,mask2);
I3 = imfilter(g1,mask3);
subplot(2,3,2);plot(g1(28,:));
title('average');
subplot(2,3,4);plot(I1(28,:));
title('[1,3]');
subplot(2,3,5);plot(I2(28,:));
title('[3,1]');
subplot(2,3,6);plot(I3(28,:));
title('[7,7]');
