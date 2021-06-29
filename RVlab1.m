RGB = imread('kotek.jpg');
I = rgb2gray(RGB);
imwrite(I, 'kotek_mono.jpg');
YCBCR = rgb2ycbcr(RGB);
imwrite(YCBCR,'kotek_Ycbcr.jpg');
HSV = rgb2ycbcr(RGB);
imwrite(HSV,'kotek_hsv.jpg');



count1 = 0;
count2 = 0;
count3 = 0;
count4 = 0;
zero = [];
A = [];
B = [];
C = [];
D = [];
E = [];
F = [];
%task1
for i = 1:size(I,1)   % size of rows
    for j = 1:size(I,2)     %size of columns
        if(ismember(I(i,j), zero) == 0)
            zero = [zero I(i,j)];
            count1 = count1 + 1;
        end
    end
end

%task2
for i=1:size(RGB,1)
    for j=1:size(RGB,2)
        A = [A [RGB(i,j,1); RGB(i,j,2); RGB(i,j,3)] ];
    end
end

for i = 1:size(A,2)
    if (sum(ismember(A(:,i), B)) ~=3)
         B = [B A(:,i)]; 
         count2 = count2 + 1;
    end
end


%task6
%YCBCR
for i=1:size(YCBCR,1)
    for j=1:size(YCBCR,2)
        C = [C [YCBCR(i,j,1); YCBCR(i,j,2); YCBCR(i,j,3)] ];
    end
end

for i = 1:size(C,2)
    if (sum(ismember(C(:,i), D)) ~=3)
         D = [D C(:,i)]; 
         count3 = count3 + 1;
    end
end

%hsv
for i=1:size(HSV,1)
    for j=1:size(HSV,2)
        E = [E [HSV(i,j,1); HSV(i,j,2); HSV(i,j,3)] ];
    end
end

for i = 1:size(E,2)
    if (sum(ismember(E(:,i), F)) ~=3)
         F = [F E(:,i)]; 
         count4 = count4 + 1;
    end
end


%task7

%segmentation of mono image
G =I;
for i = 1:size(G,1)   % size of rows
    for j = 1:size(G,2)     %size of columns
        if(G(i,j)>200)
            G(i,j) = 1;
        end
    end
end
imwrite(G, 'kotek_mono_segmentation.jpg');

%segmentation of RGB image

J=A;

  
