close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

I = imread('demo.jpg');
I = rgb2gray(I);
J = watershed(I, 8); % 分水岭分割

figure;
subplot(121); imshow(I);  % 灰度图像
subplot(122); imshow(J);  % 二值图像