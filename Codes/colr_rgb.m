img = imread('lena.jpg'); % Read image
just_gray = rgb2gray(img);
red = img(:,:,1); % Red channel
green = img(:,:,2); % Green channel
blue = img(:,:,3); % Blue channel
a = zeros(size(img, 1), size(img, 2));
just_red = cat(3, red, a, a);
just_green = cat(3, a, green, a);
just_blue = cat(3, a, a, blue);
%back_to_original_img = cat(3, red, green, blue);
figure(1)
subplot(2,3,1), imshow(img), title('Original image')
subplot(2,3,2), imshow(just_red), title('Red channel')
subplot(2,3,3), imshow(just_green), title('Green channel')
subplot(2,3,4), imshow(just_blue), title('Blue channel')
subplot(2,3,5), imshow(just_gray), title('Grayscale')
%figure, imshow(back_to_original_img), title('Back to original image')