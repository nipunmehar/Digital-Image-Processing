clc;close all;clear all;
f=imread('lena.jpg');
h = imhist(f, 25);
horz = linspace( 0, 255, 25);
bar(horz, h)
axis([0 255 0 60000])
set(gca, 'xtick', 0:50:255)
set(gca, 'ytick', 0:20000:60000)
