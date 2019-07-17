clc; clear; close all;

img = rgb2gray(imread('lena.jpg'));
subplot(3,4,2);
imshow(img);
title('Gray Scale of Original Image');
impixelinfo;

%converting to double
%(0-255) value of pixels
img_d = double(img);
%subplot(3,4,3);
%imshow(img_d/255);
%title('Image from double matrix')
%impixelinfo;

%extracting LSB
bit0 = mod(img_d,2);
subplot(3,4,5);
imshow(bit0);
title('Bit Plane 1');

%extracting 2nd bit
bit1 = mod(floor(img_d/2),2);
subplot(3,4,6);
imshow(bit1);
title('Bit Plane 2');

%extracting 3rd bit
bit2 = mod(floor(img_d/4),2);
subplot(3,4,7);
imshow(bit2);
title('Bit Plane 3');

%extracting 4th bit
bit3 = mod(floor(img_d/8),2);
subplot(3,4,8);
imshow(bit3);
title('Bit Plane 4');

%extracting 5th bit
bit4 = mod(floor(img_d/16),2);
subplot(3,4,9);
imshow(bit4);
title('Bit Plane 5');

%extracting 6th bit
bit5 = mod(floor(img_d/32),2);
subplot(3,4,10);
imshow(bit5);
title('Bit Plane 6');

%extracting 7th bit
bit6 = mod(floor(img_d/64),2);
subplot(3,4,11);
imshow(bit6);
title('Bit Plane 7');

%extracting MSB
bit7 = mod(floor(img_d/128),2);
subplot(3,4,12);
imshow(bit7);
title('Bit Plane 8');