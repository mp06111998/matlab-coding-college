f=imread('baboon_bl.png');
f=double(f);

%box_kernel = [[1 / 9, 1 / 9, 1 / 9],
              %[1 / 9, 1 / 9, 1 / 9],
              %[1 / 9, 1 / 9, 1 / 9]];

%j=double(box_kernel*f); 

j = imgaussfilt(f,(2));
k = (f+(f-j));
       
figure,imshow(f,[]);title('Original Image');
figure,imshow(j,[]);title('Blured Image');
figure,imshow(k,[]);title('Sharpened Image');