org=imread('football.jpg');
gry=rgb2gray(org);
pad=padarray(gry,[1 1],0,'both');
imshow(pad);
weights=[1 2 4 8 16 32 64 128];
tem = zeros(size(gry));
for i= 2:321
    for j=2:257
       neighbour = [pad(j+1,i) pad(j+1,i+1) pad(j,i+1) pad(j-1,i+1) pad(j-1,i) pad(j-1,i-1) pad(j,i-1) pad(j+1,i-1)];
       bit_pattern = neighbour(1,:) > pad(j,i) ;
       values = weights.*bit_pattern ;
       lbp = sum(values);
       tem(j-1,i-1) = lbp;
    end
end
imshow(tem);
