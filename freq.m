function [tp, f, index] = freq(t,x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function to calculate firing frequency
%
%  inputs: t - time vector
%          x - oscillating function (indices should match t)
%
%  outputs: tp - time points 
%           f  - corresponding frequency (at that time point)
%           index - indices of the time vector
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k=1;
index=1;
tp=t(1);

for i=1:length(t)-1
    if (x(i)<-0&x(i+1)>-0), 
        tp(k)=t(i); 
        k=k+1; 
        index = i;    
    end
end

try
    f=[1./diff(tp)];
    f=[f, f(end)];
    tp=[tp];
catch
     tp=[t(1) t(end)];
     f=[0, 0];
end

end
