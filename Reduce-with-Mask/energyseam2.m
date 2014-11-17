function [trace,index,num] = energyseam2(f,c)
% check size
[m,n,v]=size(f);
%g = zeros(m,n);
mat = energymat(f,c);
matsum = uint32(zeros(m,n));
trace = zeros(m,n);
imshow(mat)

[matsum,trace] = calsum(m,n,matsum,trace,mat);


[no,in] = sort(matsum(m,:));
  
    %for j=1:1:10
        index = in(1);
        num=no(1);
%   []=drawseam(index,g,G,trace,)
   
end