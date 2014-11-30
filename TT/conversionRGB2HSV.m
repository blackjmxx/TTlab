% passé ds la fonction uniquement 
function [HSV] = conversionRGB2HSV(bgr)
HSV = [0,0,0];
H = 0;
S = 0;
V = 0;
b = bgr(1);
g = bgr(2);
r = bgr(3);

[imax,i_max] = max(bgr);
[imin,i_min] = min(bgr);
%compute H 
if(imax == imin)
else if(i_max == 3)
    H = mod(60 * ((g - b)/(imax - imin))+360,360);
    else if (i_max == 2)
      H = 60 * ((b-r)/(imax - imin))+ 120;  
        else if (i_max == 1)
           H = 60 * ((r-g)/(imax-imin))+ 240;
            end
        end
    end
end
%calcul de S 

if (imax == 0 ) 
    S = 0;
else
   S = 1 -(imin/imax);
end

V = imax;
% show result
HSV = [H,S,V];
