function [z] = matcut(f,g,ttest)
[m,n,v]=size(f);

if ttest==0
    z=uint8(zeros(m,n-1,3));
for i=1:1:m
    for j=1:1:n-1
        
        if g(i,j)==1
            for k=j:1:n-1
            z(i,k,1)=f(i,k+1,1);
            z(i,k,2)=f(i,k+1,2);
            z(i,k,3)=f(i,k+1,3);
            end
            break;
        else
            z(i,j,1)=f(i,j,1);
            z(i,j,2)=f(i,j,2);
            z(i,j,3)=f(i,j,3);
        end
    end
end
else
   z=uint8(zeros(m-1,n,3));
for j=1:1:n
    for i=1:1:m-1
        
        if g(i,j)==1
            for k=i:1:m-1
            z(k,j,1)=f(k+1,j,1);
            z(k,j,2)=f(k+1,j,2);
            z(k,j,3)=f(k+1,j,3);
            end
            break;
        else
            z(i,j,1)=f(i,j,1);
            z(i,j,2)=f(i,j,2);
            z(i,j,3)=f(i,j,3);
        end
    end
end
end