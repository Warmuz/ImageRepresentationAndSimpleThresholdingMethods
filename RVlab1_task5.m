RGB = imread('kotek.png');
I = rgb2gray(RGB);

A = [];
B = [];
count = 0;

for i=1:size(RGB,1)
    for j=1:size(RGB,2)
        A = [A [RGB(i,j,1); RGB(i,j,2); RGB(i,j,3)] ];
    end
end

for i = 1:size(A,2)
    if (sum(ismember(A(:,i), B)) ~=3)
         B = [B A(:,i)]; 
         count = count + 1;
    end
end