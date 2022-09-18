%% 真彩图像转换为灰度、索引、二值图像
clear all;
clc;

%% 读取原始真彩色图像
A = imread('C:\Users\唐剑\OneDrive - stu.hut.edu.cn\图片\liuyifei.jpg');
subplot(2,2,1);imshow(A);title('真彩色图像');

%% 转换为灰度图像
B = rgb2gray(A);
subplot(2,2,2);imshow(B);title('灰度图像');
imwrite(B,'B_huidu.bmp','bmp');

%% 转换为索引图像
C = rgb2ind(A,64);
subplot(2,2,3);imshow(C);title('索引图像');
imwrite(C,'C_suoying.tif','tif');

%% 转换为二值图像
D = im2bw(A);
subplot(2,2,4);imshow(D);title('二值图像');