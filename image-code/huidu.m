clear all;
clc;
%% 基于灰度置乱加密
%% 获取原始图像
L = imread('E:\image-code\jiemi002.bmp')
% 请使用灰度图像，如果是彩色图像，会丢失彩色信息!!!
subplot(1,3,1);imshow(L);title('原图');
[x,y] = size(L);
% 生成与原图大小相同的随机矩阵
gadd = fix(255*rand(x,y));

%% 灰度值置乱加密
for m=1:x
    for n=1:y
        L1(m,n)=0.1*L(m,n)+0.9*gadd(m,n);
    end
end
subplot(1,3,2);imshow(L1);title('加密图片');

%% 逆向解密
%% 灰度值置乱加密
for m=1:x
    for n=1:y
        L2(m,n)=(L1(m,n)-0.9*gadd(m,n))/0.1;
    end
end
subplot(1,3,3);imshow(L2);title('解密图片');
