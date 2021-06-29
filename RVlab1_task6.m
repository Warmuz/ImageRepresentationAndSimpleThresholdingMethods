RGB = imread('kotek.jpg');
HSV = rgb2hsv(RGB);

A = uint8(size(RGB));
B = uint8(size(RGB));
C = uint8(size(RGB));

zero1 = [];
zero2 = [];
zero3 = [];
count1 = 0;
count2 = 0;
count3 = 0;

subplot(4,1,1)
imshow(HSV);
title('HSV');
for i=1:size(HSV,1)
    for j=1:size(HSV,2)
            A(i,j) = max(HSV(i,j))*255;
            if(ismember(A(i,j), zero1) == 0)
                zero1 = [zero1 A(i,j)];
                count1 = count1 + 1;
            end
    end
end
subplot(4,1,2);
imshow(A);
title('max of RGB');
for i=1:size(HSV,1)
    for j=1:size(HSV,2)
            B(i,j) = (0.3*HSV(i,j,1)+0.6*HSV(i,j,2)+0.1*HSV(i,j,3))*255;
            
            if(ismember(B(i,j), zero2) == 0)
                zero2 = [zero2 B(i,j)];
                count2 = count2 + 1;
            end
            
        
    end
end
subplot(4,1,3);
imshow(B);
title('w_R*R+w_G*G+w_B*B');
for i=1:size(HSV,1)
    for j=1:size(HSV,2)
            C(i,j) = (((double(HSV(i,j,1))+double(HSV(i,j,2))+double(HSV(i,j,3))))/3)*255;
            if(ismember(C(i,j), zero3) == 0)
                zero3 = [zero3 C(i,j)];
                count3 = count3 + 1;
            end
    end
end
subplot(4,1,4);
imshow(C);
title('sum(RGB)/3');

