%%%%%%%%%%%%%%%%%%%Read image and show%%%%%%%%%%%%%%%%%%%%%%%
I = imread('finger.jpg');
imshow(I);
IHSV = rgb2hsv(I);
imshow(IHSV);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

filename = 'Skin_NonSkin.txt';
delimiterIn= '	';
headerlinesIn = 0;
dataToLearned = importdata(filename,delimiterIn,headerlinesIn);

% gerener les histograme en parcourant les datas
dataToLearned;
s = length(dataToLearned);
s1 = ndims(dataToLearned);
s2 = ndims(dataToLearned);

%generate histogramme skin 

% parourir dataTolearned

%for n=1:s 
%    if (dataToLearned(n,4) == 1 ) 
%       dataToLearned(n,:)
%   else
%        dataToLearned(n,:)
%   end
%end
    