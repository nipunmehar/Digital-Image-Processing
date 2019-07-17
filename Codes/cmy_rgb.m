% cmy to rgb 

F=double(imread('lena_cmy.jpg'));
Fn=;
for i = 1 : 512
    for j=1:512
        Fm(i,j)=max(Fn(i,j,:));
    end
end
K=1-Fm;
R=255*(1-Fn(:,:,1)).*(1-K);
G=255*(1-Fn(:,:,2)).*(1-K);
B=255*(1-Fn(:,:,3)).*(1-K);
RGB=cat(3,R,G,B);
subplot(121),image(uint8(F));
subplot(122),image(uint8(RGB));