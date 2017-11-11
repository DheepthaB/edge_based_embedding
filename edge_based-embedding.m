clc;
img=imread('D:\xray.png');
 subplot(5,4,1);
imshow(img);
img1=img(:,:,1);
 subplot(5,4,2);
 imhist(img1);
str=input('','s');
th=70;
e=edge_detect(img,th);
%imshow(e);
emimg=edge_embed(e,img,th,str);
emimg1=emimg(:,:,1);
 subplot(5,4,3);
imshow(emimg);
subplot(5,4,4);
 imhist(emimg1);
l=length(str);
[msg,e1]=msg_extract(emimg,l);
%   subplot(5,4,4);
% imshow(e1)
emimg2=emimg;
figure;
disp(msg);
n=size(img);
M=n(1);
N=n(2);
MSE = sum(sum((e-e1).^2))/(M*N);
PSNR = 10*log10(256*256/MSE);
MSE(1)
PSNR(1)
l=255;
c1=(0.01*l)^2;
c2=(0.03*l)^2;
meanx=mean2(e(:,:,1));
meany=mean2(e1(:,:,1));
covar=sum(sum((e(:,:,1)-meanx).*(e1(:,:,1)-meany)))/(M*N-1);
varx=sum(sum((e(:,:,1)-meanx).^2))/(M*N-1);
vary=sum(sum((e1(:,:,1)-meany).^2))/(M*N-1);
uiqi=(4*covar*meanx*meany)/((varx+vary)*(meanx^2+meany^2))
r=corr2(e(:,:,1),e1(:,:,1))

img=imread('D:\ecg.png');
subplot(5,4,5);
imshow(img);
img1=img(:,:,1);
subplot(5,4,6);
 imhist(img1);
str=input('','s');
th=70;
e=edge_detect(img,th);
%imshow(e);
emimg=edge_embed(e,img,th,str);
emimg1=emimg(:,:,1);
subplot(5,4,7);
imshow(emimg);
subplot(5,4,8);
 imhist(emimg1);
l=length(str);
[msg,e1]=msg_extract(emimg,l);
% subplot(5,4,8);
% imshow(e1)
disp(msg);
n=size(img);
M=n(1);
N=n(2);
MSE = sum(sum((e-e1).^2))/(M*N);
PSNR = 10*log10(256*256/MSE);
MSE(1)
PSNR(1)
l=255;
c1=(0.01*l)^2;
c2=(0.03*l)^2;
meanx=mean2(e(:,:,1));
meany=mean2(e1(:,:,1));
covar=sum(sum((e(:,:,1)-meanx).*(e1(:,:,1)-meany)))/(M*N-1);
varx=sum(sum((e(:,:,1)-meanx).^2))/(M*N-1);
vary=sum(sum((e1(:,:,1)-meany).^2))/(M*N-1);
uiqi=(4*covar*meanx*meany)/((varx+vary)*(meanx^2+meany^2))
r=corr2(e(:,:,1),e1(:,:,1))


img=imread('D:\mri.png');
subplot(5,4,9);
imshow(img);
img1=img(:,:,1);
subplot(5,4,10);
 imhist(img1);
str=input('','s');
th=70;
e=edge_detect(img,th);
%imshow(e);
emimg=edge_embed(e,img,th,str);
emimg1=emimg(:,:,1);
subplot(5,4,11);
 imshow(emimg);
subplot(5,4,12);
 imhist(emimg1);
l=length(str);
[msg,e1]=msg_extract(emimg,l);
% subplot(5,4,12);
% imshow(e1)
disp(msg);
n=size(img);
M=n(1);
N=n(2);
MSE = sum(sum((e-e1).^2))/(M*N);
PSNR = 10*log10(256*256/MSE);
MSE(1)
PSNR(1)
l=255;
c1=(0.01*l)^2;
c2=(0.03*l)^2;
meanx=mean2(e(:,:,1));
meany=mean2(e1(:,:,1));
covar=sum(sum((e(:,:,1)-meanx).*(e1(:,:,1)-meany)))/(M*N-1);
varx=sum(sum((e(:,:,1)-meanx).^2))/(M*N-1);
vary=sum(sum((e1(:,:,1)-meany).^2))/(M*N-1);
uiqi=(4*covar*meanx*meany)/((varx+vary)*(meanx^2+meany^2))
r=corr2(e(:,:,1),e1(:,:,1))


img=imread('D:\bone.jpg');
subplot(5,4,13);
imshow(img);
img1=img(:,:,1);
subplot(5,4,14);
imhist(img1);
str=input('','s');
th=70;
e=edge_detect(img,th);
%imshow(e);
emimg=edge_embed(e,img,th,str);
emimg1=emimg(:,:,1);
subplot(5,4,15);
imshow(emimg);
subplot(5,4,16);
 imhist(emimg1);
l=length(str);
[msg,e1]=msg_extract(emimg,l);
% subplot(5,4,16);
% imshow(e1)
disp(msg);
n=size(img);
M=n(1);
N=n(2);
MSE = sum(sum((e-e1).^2))/(M*N);
PSNR = 10*log10(256*256/MSE);
MSE(1)
PSNR(1)
l=255;
c1=(0.01*l)^2;
c2=(0.03*l)^2;
meanx=mean2(e(:,:,1));
meany=mean2(e1(:,:,1));
covar=sum(sum((e(:,:,1)-meanx).*(e1(:,:,1)-meany)))/(M*N-1);
varx=sum(sum((e(:,:,1)-meanx).^2))/(M*N-1);
vary=sum(sum((e1(:,:,1)-meany).^2))/(M*N-1);
uiqi=(4*covar*meanx*meany)/((varx+vary)*(meanx^2+meany^2))
r=corr2(e(:,:,1),e1(:,:,1))


img=imread('D:\eeg.png');
subplot(5,4,17);
imshow(img);
img1=img(:,:,1);
subplot(5,4,18);
imhist(img1);
str=input('','s');
th=70;
e=edge_detect(img,th);
%imshow(e);
emimg=edge_embed(e,img,th,str);
emimg1=emimg(:,:,1);
subplot(5,4,19);
imshow(emimg);
subplot(5,4,20);
imhist(emimg1);
l=length(str);
[msg,e1]=msg_extract(emimg,l);
% subplot(5,4,20);
% imshow(e1)
disp(msg);
n=size(img);
M=n(1);
N=n(2);
MSE = sum(sum((e-e1).^2))/(M*N);
PSNR = 10*log10(256*256/MSE);
MSE(1)
PSNR(1)
l=255;
c1=(0.01*l)^2;
c2=(0.03*l)^2;
meanx=mean2(e(:,:,1));
meany=mean2(e1(:,:,1));
covar=sum(sum((e(:,:,1)-meanx).*(e1(:,:,1)-meany)))/(M*N-1);
varx=sum(sum((e(:,:,1)-meanx).^2))/(M*N-1);
vary=sum(sum((e1(:,:,1)-meany).^2))/(M*N-1);
uiqi=(4*covar*meanx*meany)/((varx+vary)*(meanx^2+meany^2))
r=corr2(e(:,:,1),e1(:,:,1))


figure;
imshow(emimg2);
