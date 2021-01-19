close all; % 关闭所有图形窗口
clear all; % 清楚工作空间所有变量
clc; % 清空命令行

format rat; % 设置为有理输出
hsobel = fspecial('sobel'); % sobel算子
hprewitt = fspecial('prewitt'); % prewitt算子
hlaplacian = fspecial('laplacian'); % laplacian算子
hlog = fspecial('log', 3); % LOG算子
format short; % 设置输出数据的格式