%Functon validé et testé
function [res] = generateBin(val)
nprec=0;
nsuiv=0;
res = 0;

for n =  1 : 16
    nprec=nsuiv;
    nsuiv=0.0625*n;
    if(val == 0) 
    res = 1;
    end
    if(val>nprec && val <= nsuiv)
        res = n;
        
    end
end

return 