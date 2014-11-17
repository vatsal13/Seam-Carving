
function [mat] = delenergymat(f,c,w)
% check size
%rr-> required row. ; rc-> required col.
[m,n,v]=size(f);
[m2,n2,v2]=size(c);
[m3,n3,v3]=size(w);
mat=int32(zeros(m,n));
    

mat=int32(abs(imfilter(f(:,:,1),[1,0,-1],'replicate')) + abs(imfilter(f(:,:,1),[1;0;-1],'replicate')));
mat=mat + int32(abs(imfilter(f(:,:,2),[1,0,-1],'replicate')) + abs(imfilter(f(:,:,2),[1;0;-1],'replicate')));
mat=mat + int32(abs(imfilter(f(:,:,3),[1,0,-1],'replicate')) + abs(imfilter(f(:,:,3),[1;0;-1],'replicate')));



for i=1:1:m3
    for j=1:1:n3
    if w(i,j)==1
        mat(i,j)=int32(10000);
       
    end
    end
end

for i=1:1:m2
    for j=1:1:n2
    if c(i,j)==1
        mat(i,j)=int32(-10000);
       
    end
    end
end


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
