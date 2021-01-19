close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

I = imread('demo.jpg');
I = rgb2gray(I);

figure;
subplot(121); imshow(I);
subplot(122); imhist(I, 200); % 显示直方图