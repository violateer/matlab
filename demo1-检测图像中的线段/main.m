close all; % �ر�����ͼ�δ���
clear all; % ��������ռ����б���
clc; % ���������

I = imread('demo.jpg'); % ����ͼƬ
I = rgb2gray(I); % ת��Ϊ�Ҷ�ͼ��
h1 = [-1, -1, -1; 2, 2, 2; -1, -1, -1]; % ģ��
h2 = [-1, -1, 2; -1, 2, -1; 2, -1, -1];
h3 = [-1, 2, -1; -1, 2, -1; -1, 2, -1];
h4 = [2, -1, -1; -1, 2, -1; -1, -1, 2];

J1 = imfilter(I, h1); % �߶μ��
J2 = imfilter(I, h2);
J3 = imfilter(I, h3);
J4 = imfilter(I, h4);

J = J1+J2+J3+J4; % �����߶ε���
figure;
subplot(121); imshow(I); % ��ʾ�Ҷ�ͼ��
subplot(122); imshow(J); % ��ʾ��⵽���߶�