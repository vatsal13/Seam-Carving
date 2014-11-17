function[g,ttest] = xdenergyseam(f,c,x,w)
[m2,n2,v]=size(f);

Ft(:,:,1)=transpose(f(:,:,1));
Ft(:,:,2)=transpose(f(:,:,2));
Ft(:,:,3)=transpose(f(:,:,3));

ct(:,:,1)=transpose(c(:,:,1));
wt(:,:,1)=transpose(w(:,:,1));

b2=zeros(m2,n2,3);
ttest=0;

if x==3
[trace1,index1,num1] = denergyseam2(f,c,w);
[trace2,index2,num2] = denergyseam2(Ft,ct,wt);
if num1<=num2
    
    trace=trace1;
    index=index1;
    ttest=0;
    
    [g]=deldrawseam(f,index,trace);
else
    
    trace=trace2;
    index=index2;
    ttest=1;
    
    
    
    [g]=deldrawseam(Ft,index,trace);
   
    
end


elseif x==2
    
    [trace2,index2,num2] = denergyseam2(Ft,ct,wt);
    trace=trace2;
    index=index2;
    ttest=1;
    [g]=deldrawseam(Ft,index,trace);
    
elseif x==1
    
    [trace1,index1,num1] = denergyseam2(f,c,w);
    trace=trace1;
    index=index1;
    ttest=0;
    [g]=deldrawseam(f,index,trace);
   
end

    
  
if ttest==1
        b2(:,:,1)=transpose(g(:,:,1));
        b2(:,:,2)=transpose(g(:,:,2));
        b2(:,:,3)=transpose(g(:,:,3));
        g=b2;

        
end
end
    