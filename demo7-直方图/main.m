close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

I = imread('demo.jpg');
I = rgb2gray(I);
J = I > 100;    % 图像分割，阈值为100
[width, height] = size(I);  % 图像的行和列
for i=1: width
    for j=1: height
        if (I(i, j) > 120 )     % 图像分割，阈值为120
            K(i, j) = 1;
        else
            K(i, j) = 0;
        end
    end
end

figure;
subplot(121); imshow(J);
subplot(122); imshow(K);