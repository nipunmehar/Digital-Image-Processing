clc;close all;clear all;
f=rgb2gray(imread('lena.jpg'));
imshow(f);
w=[-1 -2 -1;0 0 0; 1 2 1];
%filtering_mode='corr';
filtering_mode='conv';
%boundary_options='replicate';
boundary_options='circular'
g = imfilter(f, w, filtering_mode, boundary_options, 'same');
figure;
imshow(g)