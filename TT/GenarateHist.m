filename = 'Skin_NonSkin.txt';
delimiterIn= '	';
headerlinesIn = 0;
Data = importdata(filename,delimiterIn,headerlinesIn);

%%%%Convert data into histo_SKIN and histo_NoSKIN%%%%

s = length(Data);
s1 = ndims(Data);
n1 = 1 ;
n2 = 1 ;
histo_Skin = [0,0,0];
Histo_NoSkin = [0,0,0];


for n=1:s 
    if (Data(n,4) == 1 )
       histo_Skin(n1,:)= [Data(n,3),Data(n,2),Data(n,1)];
       n1=n1+1;
    else
       Histo_NoSkin(n2,:)= [Data(n,3),Data(n,2),Data(n,1)];
       n2=n2+1;
   end
end

histo_Skin

Histo_NoSkin