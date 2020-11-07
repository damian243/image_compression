clear, clc
logo = imread('logo.png');
%imshow(logo)

I = rgb2gray(logo);
subplot(2,3,1);
imshow(I)

% turn matrix into double
I2 = im2double(I);
[U,S,V] = svd(I2);

%5 singular values
S2 = S;
S2(6:end,:) = 0;
S2(:,6:end) = 0;
D = U*S2*V';
%imshow(D);
subplot(2,3,2);
imshow(D);


%20 singular values
S3 = S;
S3(20:end,:) = 0;
S3(:,20:end) = 0;
D = U*S3*V';
%imshow(D);
subplot(2,3,3);
imshow(D);

%50 singular values
S4 = S;
S4(50:end,:) = 0;
S4(:,50:end) = 0;
D = U*S4*V';
%imshow(D);
subplot(2,3,4);
imshow(D);

%100 singular values
S5 = S;
S5(100:end,:) = 0;
S5(:,100:end) = 0;
D = U*S5*V';
%imshow(D);
subplot(2,3,5);
imshow(D);