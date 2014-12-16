function [tab_Skin,tab_NoSkin] = extractSkin(filename)

delimiterIn= '	';
headerlinesIn = 0;
Data = importdata(filename,delimiterIn,headerlinesIn);

s = length(Data);
n1 = 1 ;
n2 = 1 ;

tab_Skin = [0,0,0];
tab_NoSkin = [0,0,0];

for n=1:s 
    if (Data(n,4) == 1 )
       tab_Skin(n1,:)= [Data(n,3),Data(n,2),Data(n,1)];
       n1=n1+1;
    else
       tab_NoSkin(n2,:)= [Data(n,3),Data(n,2),Data(n,1)];
       n2=n2+1;
   end
end


return