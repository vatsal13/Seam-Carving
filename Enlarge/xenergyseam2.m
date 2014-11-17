function[g,C,R,ttest] = xenergyseam2(f,C,R)

%[m,n,v]=size(G);
[m2,n2,v]=size(f);

Ft(:,:,1)=transpose(f(:,:,1));
Ft(:,:,2)=transpose(f(:,:,2));
Ft(:,:,3)=transpose(f(:,:,3));
%a=zeros(n,m,3);
%b=zeros(m,n,3);
b2=zeros(m2,n2,3);
ttest=0;

if R>0 && C>0
[trace1,index1,num1] = energyseam2(f);
[trace2,index2,num2] = energyseam2(Ft);
if num1<=num2
    trace=trace1;
    index=index1;
    ttest=0;
    [g]=drawseam(f,index,trace);
    
    C=C-1;
else
    trace=trace2;
    index=index2;
    ttest=1;

    %{
    a(:,:,1)=transpose(G(:,:,1));
    a(:,:,2)=transpose(G(:,:,2));
    a(:,:,3)=transpose(G(:,:,3));
    G=a;
    %}

    [g]=drawseam(Ft,index,trace);
 
    %{
    b(:,:,1)=transpose(G(:,:,1));
    b(:,:,2)=transpose(G(:,:,2));
    b(:,:,3)=transpose(G(:,:,3));
    G=b;
   %}
    R=R-1;
end

elseif C==0 && R~=0
    
    [trace2,index2,num2] = energyseam2(Ft);
    trace=trace2;
    index=index2;
    ttest=1;
    [g]=drawseam(Ft,index,trace);
%{
    b(:,:,1)=transpose(G(:,:,1));
    b(:,:,2)=transpose(G(:,:,2));
    b(:,:,3)=transpose(G(:,:,3));
    G=b;
    %}
    R=R-1;
elseif R==0 && C~=0
    
    [trace1,index1,num1] = energyseam2(f);
    trace=trace1;
    index=index1;
    ttest=0;
    [g]=drawseam(f,index,trace);
    C=C-1;
end
    
    if ttest==1
        b2(:,:,1)=transpose(g(:,:,1));
        b2(:,:,2)=transpose(g(:,:,2));
        b2(:,:,3)=transpose(g(:,:,3));
        g=b2;

        
    end
    