function [matsum,trace] = dcalsum(m,n,matsum,trace,mat)
for i=1:1:n
    matsum(1,i)=mat(1,i);
end

for i1=2:1:m
    for i2=1:1:n
        if i2==1
            if  matsum(i1-1 , i2)>matsum(i1-1 , i2+1)
            r=matsum(i1-1 , i2+1);
            trace(i1,i2)=3;
            else
            r=matsum(i1-1 , i2);
            trace(i1,i2)=2;
            end
        
        
        elseif i2==n
            if  matsum(i1-1 , i2)>matsum(i1-1 , i2-1)
            r=matsum(i1-1 , i2-1);
            trace(i1,i2)=1;
            else
            r=matsum(i1-1 , i2);
            trace(i1,i2)=2;
            end
        
        
        else
            r=matsum(i1-1,i2);
            trace(i1,i2)=2;
            if r>matsum(i1-1,i2-1)
                r=matsum(i1-1,i2-1);
                trace(i1,i2)=1;
            end
            if r>matsum(i1-1,i2+1)
                r=matsum(i1-1,i2+1);
                trace(i1,i2)=3;
            end
           
        end
        matsum(i1,i2) = int32(mat(i1,i2)) + r;
    end
end