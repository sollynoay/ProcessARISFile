clear all;
I=imread('./image/im_95.jpg');
I2=imread('./image/im_99.jpg');
%I=rgb2gray(I);
%I2=rgb2gray(I2);
%I3=rgb2gray(I3);
%BW = imbinarize(I,0.25);
%BW2 = bwmorph(BW,'fill');

%BW2=bwareaopen(BW2,5);
%corners = detectSURFFeatures(BW2);
%figure();
%imshow(BW2);
%hold on;
%plot(corners.selectStrongest(10));



corners = detectSURFFeatures(I);
corners2 = detectSURFFeatures(I2);

figure(1);
imshow(I);
hold on;
plot(corners.selectStrongest(10));
figure(2);
imshow(I2);
hold on;
plot(corners2.selectStrongest(10));


[featuresOriginal,validPtsOriginal] = ...
            extractFeatures(I,corners);
[featuresDistorted,validPtsDistorted] = ...
            extractFeatures(I2,corners2);
indexPairs = matchFeatures(featuresOriginal,featuresDistorted);
matchedOriginal  = validPtsOriginal(indexPairs(:,1));
matchedDistorted = validPtsDistorted(indexPairs(:,2));
figure;
ax = axes;
showMatchedFeatures(I,I2,matchedOriginal,matchedDistorted,'montage','Parent',ax)

