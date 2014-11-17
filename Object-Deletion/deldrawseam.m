function[g]=deldrawseam(f,index,trace)
[m,n,v]=size(f);

g = zeros(m,n);
for i=m:-1:1
        g(i,index,1)=1;
        g(i,index,2)=1;
        g(i,index,3)=1;
        
        
        if trace(i,index)==1
            index=index-1;
        elseif trace(i,index)==2
            continue;
        elseif trace(i,index)==3
            index=index+1;
        end
        
end