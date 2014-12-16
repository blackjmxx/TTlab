function [Hist] = generateHist(tab_hist)

l =  length(tab_hist);
Hist = zeros(16,16);

for n = 1 : l
    rgb =  tab_hist(n,:);
    hsv = rgb2hsv(rgb);
    H = generateBin(hsv(1,1));
    S = generateBin(hsv(1,2));
    
    Hist(H,S) = Hist(H,S) +1/l ;
    
end


return