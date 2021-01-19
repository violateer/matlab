close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

I = imread('demo.png');
I = rgb2gray(I);
I = im2double(I);
J = imnoise(I, 'gaussian', 0, 0.01); % 添加高斯噪声
[K, thresh] = edge(J, 'canny'); % Canny算子检测边缘

figure;
subplot(121); imshow(J);
subplot(122); imshow(K);