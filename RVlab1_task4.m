RGB = imread('kotek.jpg');
A = uint8(size(RGB));
B = uint8(size(RGB));
C = uint8(size(RGB));

zero1 = [];
zero2 = [];
zero3 = [];
count1 = 0;
count2 = 0;
count3 = 0;
for i=1:size(RGB,1)
    for j=1:size(RGB,2)
            A(i,j) = max(RGB(i,j));
            if(ismember(A(i,j), zero1) == 0)
                zero1 = [zero1 A(i,j)];
                count1 = count1 + 1;
            end
    end
end
subplot(3,1,1);
imshow(A);
title('max of RGB');
for i=1:size(RGB,1)
    for j=1:size(RGB,2)
            B(i,j) = (0.3*RGB(i,j,1)+0.6*RGB(i,j,2)+0.1*RGB(i,j,3));
            
            if(ismember(B(i,j), zero2) == 0)
                zero2 = [zero2 B(i,j)];
                count2 = count2 + 1;
            end
            
        
    end
end
subplot(3,1,2);
imshow(B);
title('w_R*R+w_G*G+w_B*B');
for i=1:size(RGB,1)
    for j=1:size(RGB,2)
            C(i,j) = ((double(RGB(i,j,1))+double(RGB(i,j,2))+double(RGB(i,j,3))))/3;
            if(ismember(C(i,j), zero3) == 0)
                zero3 = [zero3 C(i,j)];
                count3 = count3 + 1;
            end
    end
end
subplot(3,1,3);
imshow(C);
title('sum(RGB)/3');