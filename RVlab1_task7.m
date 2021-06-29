RGB = imread('kotek.jpg');
grey = rgb2gray(RGB);
HSV = rgb2hsv(RGB);


A =grey;
B = RGB;
C = HSV;
subplot(2,1,1)
imshow(RGB);
title('Orginal');

%grey
for i = 1:size(A,1)   % size of rows
    for j = 1:size(A,2)     %size of columns
        if(A(i,j)>140)
            A(i,j) = 1;
        end
    end
end



%RGB
for i = 1:size(B,1)   % size of rows
    for j = 1:size(B,2)     %size of columns
        if((B(i,j,1)+B(i,j,2)+B(i,j,3))>245)
            B(i,j,1) = 1;
            B(i,j,2) = 1;
            B(i,j,3) = 1;
        end
    end
end



%HSV
for i = 1:size(C,1)   % size of rows
    for j = 1:size(C,2)     %size of columns
        if(C(i,j,2)>0.20 && C(i,j,2)<0.35)
            C(i,j,1) = 1/360; %red background
        end
    end
end
D = hsv2rgb(C);
subplot(2,1,2)
imshow(D);
title('Segmentation of cat');
