%% 基于像素点RGB值放大加密
% 读取加密图像
a = imread('e:\image-code\liuyifei.jpg');

% size(a)函数：获取矩阵大小，返回矩阵行列数
% rand()函数：随机生成和a大小相同的矩阵并且乘以100，可理解为加密倍数
r = rand(size(a))*100;

% 将a转为双精度，因为rand()函数生成的r矩阵精度较高，a矩阵与r矩阵相乘,需要提高a矩阵的的精度
rgbd = im2double(a);

%% 矩阵点乘运算，实现rgb值的放大加密
rgbs = rgbd.*r;

%% 保存加密后的图像
% b = imwrite(rgbs,'E:\image-code\jiami001.jpg');

%% 矩阵点除运算，实现rgb值的缩小解密
rgbe = rgbs./r;

%% 显示图像
subplot(1,3,1);imshow(a);title('原图');
subplot(1,3,2);imshow(rgbs);title('加密后');
subplot(1,3,3);imshow(rgbe);title('解密后');