clc;clear;close all;
% I = zeros(257);
% for i=1:256
%         I(i+1,:)=i;
% end
z=ones(256,256);
for i=1:256
    for j=1:256
        z(i,j)=exp(-((i-128)^2+(j-128)^2)/1000);
    end
end
I2 = double(z);
fo = abs(fft2(I2));
F = fftshift(fo);
subplot(2,3,1);imshow(z,[]);
title('tasvir asli');
subplot(2,3,2);imshow(abs(F),[],'InitialMagnification','fit');
colormap(gray); colorbar
title('fourier');
subplot(2,3,3);imshow(log(1+abs(F)),[],'InitialMagnification','fit'); 
colormap(gray); colorbar
title('fourier image with log10');
subplot(2,3,5);mesh(abs(F));
subplot(2,3,6);mesh(log(1+abs(F)));