
function [mat] = energymat(f)
% check size
%rr-> required row. ; rc-> required col.
[m,n,v]=size(f);
mat = zeros(m,n);
mat=abs(imfilter(f(:,:,1),[1,0,-1],'replicate')) + abs(imfilter(f(:,:,1),[1;0;-1],'replicate'));
mat=mat + abs(imfilter(f(:,:,2),[1,0,-1],'replicate')) + abs(imfilter(f(:,:,2),[1;0;-1],'replicate'));
mat=mat + abs(imfilter(f(:,:,3),[1,0,-1],'replicate')) + abs(imfilter(f(:,:,3),[1;0;-1],'replicate'));

%{
g=f;
i=m-rr;
j=n-rc;
while j>0
    r=rand;
    y = uint16(n*r);
    %disp(y)
    for p=1:1:m
    g(p,y,1)=0;
    g(p,y,2)=0;
    g(p,y,3)=0;
   
    end
    j=j-1;
end
imshow(g)
%}
end
