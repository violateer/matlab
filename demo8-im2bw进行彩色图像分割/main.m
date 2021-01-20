close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

[X, map] = imread('demo.jpg');
J = rgb2gray(X); % 索引图像转换为灰度图像
K = im2bw(X, map, 0.4); % 图像分割

figure;
subplot(121); imshow(J);  % 灰度图像
subplot(122); imshow(K);  % 二值图像