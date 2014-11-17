function[tc]=checkc(c)
[m,n,v]=size(c);
tc=0;
for i=1:1:m
    for j=1:1:n
    if c(i,j)==1
        tc=1;
        break;
    end
    end
end
