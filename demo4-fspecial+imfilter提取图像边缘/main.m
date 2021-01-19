close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

I = imread('demo-Sobel.jpg');
I = rgb2gray(I);
I = im2double(I);
h = fspecial('laplacian'); % laplacian算子
J = imfilter(I, h, 'replicate'); % 图像滤波
K = im2bw(J, 80/255); % 变为二值图像

figure;
subplot(121); imshow(I);
subplot(122); imshow(J);