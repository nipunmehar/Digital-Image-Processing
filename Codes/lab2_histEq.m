clc; clear; close all;

Img = imread('C:\Users\Nipun Mehar\Downloads\300px-JPEG_example_subimage.svg.png');
total_pixels = size(Img,1)*size(Img,2);

subplot(2,2,1);
imshow(Img);
title('Original  Image');

Img_hist = uint8(zeros(size(Img,1),size(Img,2)));
freq = zeros(256,1); %occurence of each pixel
probf = zeros(256,1); %probability
probc = zeros(256,1);
cummulative = zeros(256,1);
output = zeros(256,1);
n=1:256;

for i = 1:size(Img,1)
    for j = 1:size(Img,2)
        value = Img(i,j);
        freq(value+1) = freq(value+1)+1;
        probf(value+1) = freq(value+1)/total_pixels;
    end
end

subplot(2,2,2);
imhist(Img);
title('Histogram of original image');
% plot(n,probf);
% title('Probability Distribution Function');

sum = 0;
max_val = 255;

%CDF
for i = 1:size(probf)
   sum = sum+freq(i);
   cummulative(i) = sum;
   probc(i) = cummulative(i)/total_pixels;
   output(i) = round(probc(i)*max_val);
end
% subplot(2,2,3);
% plot(n,output);
for i = 1:size(Img,1)
    for j = 1:size(Img,2)
            Img_hist(i,j) = output(Img(i,j)+1);
    end
end

subplot(2,2,3);
imshow(Img_hist);
title('Histogram equalization');

subplot(2,2,4);
imhist(Img_hist);
title('Histogram of Enhanced Image');
