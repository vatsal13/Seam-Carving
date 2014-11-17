function[g]=drawseam(f,index,trace)
[m,n,v]=size(f);

g = zeros(m,n);
for i=m:-1:1
        g(i,index,1)=1;
        g(i,index,2)=1;
        g(i,index,3)=1;
        
 %{      
 l= index;
    
        for j=1:1:l
            
            if G(i,j)==1
                l=l+1;
            end
        end
           
        G(i,l,1)=1;
        G(i,l,2)=1;
      G(i,l,3)=1;
    %}    
        if trace(i,index)==1
            index=index-1;
        elseif trace(i,index)==2
            continue;
        elseif trace(i,index)==3
            index=index+1;
        end
        
end