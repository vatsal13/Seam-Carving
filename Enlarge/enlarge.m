
function [z] = enlarge(f,rc,rr)
[m,n,v]=size(f);
%G=zeros(m,n,3);
C=rc-n;
R=rr-m;

for i=1:1:((rc-n)+(rr-m))
    [g,C,R,ttest] = xenergyseam2(f,C,R);
     [z] = matadd(f,g,ttest);
     f=z;
     %G=g3;
   
end









