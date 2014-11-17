function[trace,index,num] = denergyseam2(f,c,w)
[m,n,v]=size(f);
%g = zeros(m,n);
mat = delenergymat(f,c,w);
matsum = int32(zeros(m,n));
trace = zeros(m,n);
%imshow(mat)

[matsum,trace] = dcalsum(m,n,matsum,trace,mat);


[no,in] = sort(matsum(m,:));
  
    %for j=1:1:10
        index = in(1);
        num=no(1);
%   []=drawseam(index,g,G,trace,)
   
end