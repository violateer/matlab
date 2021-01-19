close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

I = imread('demo.jpg'); % 读入图像
I = rgb2gray(I);
I = im2double(I);

[J, thresh] = edge(I, 'roberts', 35/255); % Roberts算子进行边缘检测

figure;
subplot(1,2,1); imshow(I);
subplot(1,2,2); imshow(J);