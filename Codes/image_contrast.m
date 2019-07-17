X = imread('lena.jpg');
yy = rgb2gray(X);
% R = X(:,:,1);
% image(R), colormap([[0:1/255:1]', zeros(256,1), zeros(256,1)]);
% 
% G = X(:,:,2);
% figure;
% image(G), colormap([zeros(256,1),[0:1/255:1]', zeros(256,1)]);
% 
% B = X(:,:,3);
% figure;
% image(B), colormap([zeros(256,1), zeros(256,1), [0:1/255:1]']);
% ---------------------------------------------------------------------------------------
figure();
histogram(yy);
 
J = histeq(yy);
figure();
imshowpair(yy,J,'montage')
 
figure();
imhist(yy,256)
