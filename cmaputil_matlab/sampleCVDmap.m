function sample=sampleCVDmap(n)
% sampleCVDmap
%   Gives a nx3 matrix of colors from the cividis colormap
%
%   n           The number of colors needed
%
%   sample      Matrix with n RGB combinations (0-1)
%   
%   Usage: sample=sampleCVDmap(n)
%
%   Benjamín J. Sánchez, 2018-08-14
%

%Get cividis colormap:
cividis = CVDmap;

%Define step size and get colors:
[m,~]  = size(cividis);
step   = (m-1)/(n-1);
sample = cividis(floor(1:step:m),:);

end
