function [z] = matadd(f,g,ttest)
[m,n,v]=size(f);
f16=int16(f);
if ttest==0
    z=uint16(zeros(m,n+1,3));
for i=1:1:m
    for j=1:1:n
        
        if g(i,j)==1 
            
            if (j+1)<=(n) && (j-1)>0
            z(i,j,1)=(f16(i,j-1,1)+f16(i,j,1))/2;
            z(i,j,2)=(f16(i,j-1,2)+f16(i,j,2))/2;
            z(i,j,3)=(f16(i,j-1,3)+f16(i,j,3))/2;
            
            z(i,j+1,1)=(f16(i,j,1)+f16(i,j+1,1))/2;
            z(i,j+1,2)=(f16(i,j,2)+f16(i,j+1,2))/2;
            z(i,j+1,3)=(f16(i,j,3)+f16(i,j+1,3))/2;
            
            j=j+1;
            elseif (j+1)>(n)
                z(i,j,1)=(f16(i,j-1,1)+f16(i,j,1))/2;
            z(i,j,2)=(f16(i,j-1,2)+f16(i,j,2))/2;
            z(i,j,3)=(f16(i,j-1,3)+f16(i,j,3))/2;
            
            z(i,j+1,1)=(f16(i,j,1))/2;
            z(i,j+1,2)=(f16(i,j,2))/2;
            z(i,j+1,3)=(f16(i,j,3))/2;
            
            j=j+1;
            
            elseif (j-1)<1
                z(i,j,1)=(f16(i,j,1))/2;
            z(i,j,2)=(f16(i,j,2))/2;
            z(i,j,3)=(f16(i,j,3))/2;
            
            z(i,j+1,1)=(f16(i,j,1)+f16(i,j+1,1))/2;
            z(i,j+1,2)=(f16(i,j,2)+f16(i,j+1,2))/2;
            z(i,j+1,3)=(f16(i,j,3)+f16(i,j+1,3))/2;
            
            j=j+1;
            end
            for k=j:1:n
                 z(i,k+1,1)=f16(i,k,1);
            z(i,k+1,2)=f16(i,k,2);
            z(i,k+1,3)=f16(i,k,3);
            end
        break;
        else
            z(i,j,1)=f16(i,j,1);
            z(i,j,2)=f16(i,j,2);
            z(i,j,3)=f16(i,j,3);
        end
    end
end
else
   z=uint16(zeros(m+1,n,3));
for j=1:1:n
    for i=1:1:m
        
        
        if g(i,j)==1 
            
            if (i+1)<=(m) &&(i-1)>0
            z(i,j,1)=(f16(i-1,j,1)+f16(i,j,1))/2;
            z(i,j,2)=(f16(i-1,j,2)+f16(i,j,2))/2;
            z(i,j,3)=(f16(i-1,j,3)+f16(i,j,3))/2;
            
            z(i+1,j,1)=(f16(i,j,1)+f16(i+1,j,1))/2;
            z(i+1,j,2)=(f16(i,j,2)+f16(i+1,j,2))/2;
            z(i+1,j,3)=(f16(i,j,3)+f16(i+1,j,3))/2;
            
            i=i+1;
            
            elseif (i+1)>(m)
            z(i,j,1)=(f16(i-1,j,1)+f16(i,j,1))/2;
            z(i,j,2)=(f16(i-1,j,2)+f16(i,j,2))/2;
            z(i,j,3)=(f16(i-1,j,3)+f16(i,j,3))/2;
            
            z(i+1,j,1)=(f16(i,j,1)+0)/2;
            z(i+1,j,2)=(f16(i,j,2)+0)/2;
            z(i+1,j,3)=(f16(i,j,3)+0)/2;
            
            i=i+1;
            
            elseif (i-1)<1
            z(i,j,1)=(f16(i,j,1))/2;
            z(i,j,2)=(f16(i,j,2))/2;
            z(i,j,3)=(f16(i,j,3))/2;
            
            z(i+1,j,1)=(f16(i,j,1)+f16(i+1,j,1))/2;
            z(i+1,j,2)=(f16(i,j,2)+f16(i+1,j,2))/2;
            z(i+1,j,3)=(f16(i,j,3)+f16(i+1,j,3))/2;
            
            i=i+1;
            end
            for k=i:1:m
                 z(k+1,j,1)=f16(k,j,1);
            z(k+1,j,2)=f16(k,j,2);
            z(k+1,j,3)=f16(k,j,3);
            end
        break;
        else
            z(i,j,1)=f16(i,j,1);
            z(i,j,2)=f16(i,j,2);
            z(i,j,3)=f16(i,j,3);
        end
    end
end
end
z=uint8(z);