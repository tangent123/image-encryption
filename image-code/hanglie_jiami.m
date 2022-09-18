%% 基于行列像素点置乱加密
%% 读取图像
a = imread('E:\image-code\liuyifei.jpg');
% 显示原图
subplot(2,3,1);imshow(a);title('原图');

%% 获取原图信息
% 获取原图行列数
[M,N] = size(a);

% 随机生成M个不相同的不大于M的数
Rm = randsample(M,M)';
Mchange = [1:1:M;Rm];

% 随机生成N个不相同的不大于N的数
Rn = randsample(N,N)';
Nchange = [1:1:N;Rn];

%% 加密
% 打乱行顺序
a(Mchange(1,:),:) = a(Mchange(2,:),:); % 按照随机生成的Rm序列中的顺序对原图矩阵的行进行重新排列
subplot(2,3,2);imshow(a);title('行加密');

% 打乱列顺序
a(:,Nchange(1,:)) = a(:,Nchange(2,:)); % 按照随机生成的Rn序列中的顺序对原图矩阵的列进行重新排列
subplot(2,3,3);imshow(a);title('列加密');

%% 解密
% 恢复行顺序
a(Mchange(2,:),:) = a(Mchange(1,:),:); % 逆向还原
subplot(2,3,5);imshow(a);title('行解密');

% 恢复列顺序
a(:,Nchange(2,:)) = a(:,Nchange(1,:)); % 逆向还原
subplot(2,3,6);imshow(a);title('列解密');
