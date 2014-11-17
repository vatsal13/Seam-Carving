function [z,c] = del(f,x)

[m,n,v]=size(f);
w=ones(m,n);
c=roipoly(f);
tc=checkc(c);
while tc==1
    [g,ttest] = xdenergyseam(f,c,x,w);
     [z,c2,w2] = delmatcut(f,g,ttest,c,w);
     f=z;
     c=c2;
     w=w2;
     imshow(c)
     tc=checkc(c);
   
end
