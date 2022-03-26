% clearing the output screen
clc;

% reading image's pixel in c
c = imread('img.jpg');

%converting to grayscale:
img = rgb2gray(c);

% extracting all bit one by one
% from 1st to 8th in variable
% from c1 to c8 respectively
for i = 1:1440
    for j = 1:665
        temp1 = dec2bin(img(i,j),8);
        temp2 = num2str(temp1);
        c1(i,j) = str2num(temp2(8));
        c2(i,j) = str2num(temp2(7));
        c3(i,j) = str2num(temp2(6));
        c4(i,j) = str2num(temp2(5));
        c5(i,j) = str2num(temp2(4));
        c6(i,j) = str2num(temp2(3));
        c7(i,j) = str2num(temp2(2));
        c8(i,j) = str2num(temp2(1));
    end
end

% combining image again to form equivalent to original grayscale image
cc = (2 * (2 * (2 * (2 * (2 * (2 * (2 * c8 + c7) + c6) + c5) + c4) + c3) + c2) + c1);

% plotting original image in first subplot
subplot(2, 5, 1);
imshow(img);
title('Original Image');

% plotting binary image having extracted bit from 1st to 8th
% in subplot from 2nd to 9th
subplot(2, 5, 2);
imshow(c1);
title('Bit Plane 1');
subplot(2, 5, 3);
imshow(c2);
title('Bit Plane 2');
subplot(2, 5, 4);
imshow(c3);
title('Bit Plane 3');
subplot(2, 5, 5);
imshow(c4);
title('Bit Plane 4');
subplot(2, 5, 6);
imshow(c5);
title('Bit Plane 5');
subplot(2, 5, 7);
imshow(c6);
title('Bit Plane 6');
subplot(2, 5, 8);
imshow(c7);
title('Bit Plane 7');
subplot(2, 5, 9);
imshow(c8);
title('Bit Plane 8');

% plotting recombined image in 10th subplot
subplot(2, 5, 10);
imshow(uint8(cc));
title('Recombined Image');
