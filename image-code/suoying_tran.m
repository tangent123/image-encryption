%% 索引转为灰度、二值、真彩色图像
clear all ;
clc;

%% 读取原始索引图像
[X,map] = imread('E:\image-code\C_suoying.tif');
subplot(2,2,1);imshow(X,map);title('原始索引图像');

%% 灰度图像
B = ind2gray(X,map);
subplot(2,2,2);imshow(B);title('灰度图像');

%% 二值图像
C = imbinarize(X,map);
subplot(2,2,3);imshow(C);title('二值图像');

%% 真彩色图像
D = ind2rgb(X,map);
subplot(2,2,4);imshow(D);title('真彩色图像');