close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

% Roberts算子
I_Roberts = imread('demo-Roberts.jpg'); % 读入图像
I_Roberts = rgb2gray(I_Roberts); % 转换为灰度图像，edge需要二维数组，彩色图像是三维
I_Roberts = im2double(I_Roberts);

% Prewitt算子
I_Prewitt = imread('demo-Prewitt.jpg');
I_Prewitt = rgb2gray(I_Prewitt);
I_Prewitt = im2double(I_Prewitt);

% Sobel算子
I_Sobel = imread('demo-Sobel.jpg');
I_Sobel = rgb2gray(I_Sobel);
I_Sobel = im2double(I_Sobel);

[J_Roberts, thresh1] = edge(I_Roberts, 'roberts', 35/255); % Roberts算子进行边缘检测
[J_Prewitt, thresh2] = edge(I_Prewitt, 'prewitt', [], 'both'); % Prewitt算子进行边缘检测
[J_Sobel, thresh3] = edge(I_Sobel, 'sobel', [], 'horizontal'); % Sobel算子进行边缘检测

figure;
subplot(3,2,1); imshow(I_Roberts);
subplot(3,2,2); imshow(J_Roberts);

subplot(3,2,3); imshow(I_Prewitt);
subplot(3,2,4); imshow(J_Prewitt);

subplot(3,2,5); imshow(I_Sobel);
subplot(3,2,6); imshow(J_Sobel);