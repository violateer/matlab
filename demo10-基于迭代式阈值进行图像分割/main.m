close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

I = imread('demo.jpg');
I = rgb2gray(I);
I = im2double(I);

T0 = 0.01; %参数T0
T1 = (min(I(:)) + max(I(:))) /2 ;
r1 = find(I > T1);
r2 = find(I <= T1);
T2 = (mean(I(r1)) + mean(I(r2))) / 2;

while abs(T2-T1) < T0 % 迭代求阈值
    T1 = T2;
    r1 = find(I>T1);
    r2 = find(I<=T1);
    T2 = (mean(I(r1)) + mean(I(r2))) / 2;
end

J = im2bw(I, T2); % 图像分割

figure;
subplot(121); imshow(I);  % 灰度图像
subplot(122); imshow(J);  % 二值图像