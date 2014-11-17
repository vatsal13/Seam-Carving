
function [z] = seamcarve(f,rc,rr)
[m,n,v]=size(f);
G=zeros(m,n,3);
c=roipoly(f);
C=n-rc;
R=m-rr;

for i=1:1:((n-rc)+(m-rr))
    [g,C,R,ttest] = xenergyseam2(f,C,R,c);
     [z,c2] = matcut(f,g,ttest,c);
     c=c2;
     f=z;
     
   
end









