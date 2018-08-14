function cmap = CVDmap
% CVDmap
%   Creates a cividis map in Matlab
%
%   cmap     Matrix with all RGB combinations (0-1)
%   
%   Usage: cmap = CVDmap
%
%   Benjamín J. Sánchez, 2018-08-14
%

%Get and change to the script folder
currentDir = cd(fileparts(which(mfilename)));

%Load colormap values:
fid = fopen('../colormaps/cividis.txt','r');
cmap = textscan(fid,'%f32 %f32 %f32','Delimiter','\t','HeaderLines',0);
cmap = [cmap{1} cmap{2} cmap{3} ];
fclose(fid);

%Assign colormap:
cmap = colormap(cmap);

%Get back to previous directory:
cd(currentDir)

end
