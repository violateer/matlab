close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

I = imread('demo.jpg'); % 读入图片
I = rgb2gray(I); % 转换为灰度图像
h1 = [-1, -1, -1; 2, 2, 2; -1, -1, -1]; % 模板
h2 = [-1, -1, 2; -1, 2, -1; 2, -1, -1];
h3 = [-1, 2, -1; -1, 2, -1; -1, 2, -1];
h4 = [2, -1, -1; -1, 2, -1; -1, -1, 2];

J1 = imfilter(I, h1); % 线段检测
J2 = imfilter(I, h2);
J3 = imfilter(I, h3);
J4 = imfilter(I, h4);

J = J1+J2+J3+J4; % 四条线段叠加
figure;
subplot(121); imshow(I); % 显示灰度图像
subplot(122); imshow(J); % 显示检测到的线段