OriginalImage = imread('F:\Versity Stuffs\Thesis Papers\img processing\imgAnalysis\4.jpeg');
OriginalImage = rgb2gray(OriginalImage)
meanvalOriginal = mean2 (OriginalImage);
stdvalOriginal = std2 (OriginalImage);
snrOriginal = (meanvalOriginal / stdvalOriginal);
figure
imshow(OriginalImage)
DeNoiseImage = filter2(fspecial('average',3),OriginalImage)/255;
meanvalDeNoise = mean2 (DeNoiseImage);
stdvalDeNoise = std2 (DeNoiseImage);
snrDeNoise = (meanvalDeNoise / stdvalDeNoise)
figure
imshow(DeNoiseImage)
