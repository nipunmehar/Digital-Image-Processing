clc;clear all;close all;
%mat=[1 2 3 4 ; 5 6 7 8 ; 9 10 11 12; 13 14 15 16];
%mat=[1 2 3; 4 5 6 ;  7 8 9]
%Nipun Mehar
%Yash Pawar
mat=round(10*rand(8)) %matrix input
s=size(mat)
sum=s(1,1)+s(1,2) %sum of row and column
new=zeros(1,s(1,1)*s(1,2)) %% new linear matrix
z=1;
for i = 2:sum       %column increment when sum is even
    if mod(i,2)== 0
        for c= 1:s(1,2)
        if (i-c)<=s(1,1) && (i-c)>=1
        new(1,z)=mat(i-c,c);
        z=z+1;
        end
        end
    end
    if mod(i,2)~= 0    %row increment when sum is odd
        for r= 1:s(1,1)
        if (i-r)<=s(1,2) && (i-r)>=1
        new(1,z)=mat(r,i-r);
        z=z+1;
        end
        end
    end
end