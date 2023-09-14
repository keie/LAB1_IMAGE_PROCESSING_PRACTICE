clear; close all;
I = imread('input/AlfredoBorba_TuscanLandscape.jpg');
figure(1);
imshow(I)

isColor = size(I,3) == 3;

if isColor 
    GRY = rgb2gray(I);
    imshow(GRY)
    imwrite(GRY,"output/test.jpg")
end
