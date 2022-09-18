clear all;

      [X,map]=imread('E:\image-code\OIP-C.jpg');  %读取索引图

      subplot(2,2,1);imshow(X,map);title('索引图像');  %显示索引图像

      I=ind2gray(X,map);  %转换为灰度图像

      subplot(2,2,2);imshow(I);title('灰度图像');  %显示灰度图像

      BW=im2bw(X,map);   %转换为二值图像

      subplot(2,2,4);imshow(BW);title('二值图像');  %显示二值图像

      shadow=ind2rgb(X,map);  %转换为真彩色图像

      subplot(2,2,3);imshow(shadow);title('真彩色图像');  %显示真彩色图像

