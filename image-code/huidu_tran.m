clear all;
clc;
%% 读取原始图像
A = imread('E:\image-code\B_huidu.bmp');

%% 显示灰度图像
subplot(2,2,1);
imshow(A);
title('灰度图像');

%% 显示索引图像
[X,map] = gray2ind(A,16);

%% 显示索引图像
subplot(2,2,2);
imshow(X,map);
title('索引图像');

%% 转为索引图像
Y = grayslice(A,16);

%% 显示索引图像
subplot(2,2,3);
imshow(Y);
title('索引图像2');

%% 显示二值图像
BW = im2bw(A);

%% 显示二值图像
subplot(2,2,4);
imshow(BW);
title('二值图像');
