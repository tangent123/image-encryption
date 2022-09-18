clear all;
clc;
%% 基于混沌序列加密
%% 处理图像信息
% 读取原图
l = imread('E:\image-code\liuyifei.jpg')
% 转换为灰度图像
x = rgb2gray(l);
% 显示原始图片
subplot(1,3,1);imshow(x);title('原始图片');
% 获取图像大小
[a,b,c] = size(l);
% 定义变量N并赋值
N = a*b;

%% 加密
%% 创建秘钥
% 用户输入加密密码
m(1) = input('请输入秘钥（0~1之间）：');
% 提示信息
disp('加密中...');
% 进行N-1次循环产生序列密码
for i=1:N-1
    m(i+1) = 4*m(i)-4*m(i)^2;
end
m = mod(1000*m,256);
% 转换为无符号整型
m = uint8(m);
n = 1;
for i=1:a
    for j=1:b
        % 将图像每一像素值与序列每一位进行异或运算
        e(i,j)=bitxor(m(n),x(i,j));
        n = n+1;
    end
end
%% 显示加密后的图片
subplot(1,3,2);imshow(e);title('加密后图片');
%% 写入加密后的图片
imwrite(e,'E:\image-code\jiami002.bmp');

%% 解密
[a,b,c] = size(e);
N = a*b;
m(1) = input('请输入秘钥（0~1之间）：');
disp('解密中...');
% 进行N-1次循环产生序列密码
for i=1:N-1
    m(i+1) = 4*m(i)-4*m(i)^2;
end
m = mod(1000*m,256);
% 转换为无符号整型
m = uint8(m);
n = 1;
for i=1:a
    for j=1:b
        % 将图像每一像素值与序列每一位进行异或运算
        o(i,j)=bitxor(m(n),x(i,j));
        n = n+1;
    end
end

%% 显示解密后的图片
subplot(1,3,3);imshow(o);title('解密后图片');

%% 写入解密后的图片
imwrite(o,'E:\image-code\jiemi002.bmp');