% RGB to CMY
clear all, close all,clc
F=imread('lena.jpg');
Fn=double(F)/255;
for i = 1 : 512
    for j=1:512
        Fm(i,j)=max(Fn(i,j,:));
    end
end
K=1-Fm;
c=(1-Fn(:,:,1)-K)./(1-K);
m=(1-Fn(:,:,2)-K)./(1-K);
y=(1-Fn(:,:,3)-K)./(1-K);
CMY=cat(3,c,m,y);
subplot(121),image(F);
subplot(122),image(CMY);
imwrite(CMY,'lena_cmy.jpg')