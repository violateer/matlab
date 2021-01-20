close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

I = imread('demo.jpg');
I = rgb2gray(I);
I = im2double(I);
T = graythresh(I); % 获取阈值
J = im2bw(I,T); % 图像分割

figure;
subplot(121); imshow(I);  % 灰度图像
subplot(122); imshow(J);  % 二值图像