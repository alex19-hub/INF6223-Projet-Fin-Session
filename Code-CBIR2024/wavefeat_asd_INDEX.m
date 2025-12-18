function [asd] = wavefeat_asd_INDEX(dirname,nlevels)

% Input:
%   dirname: directory that contains all images, e.g. '../VisTex/sub128'
%   nlevels: number of wavelet pyramid levels.

% Output:
%   asd: Feature vectors from average and standard deviation.

files=dir(dirname);
% Initialize
asd  = [];

for i=3:size(files,1)
    
[fv] = wavefeat_asd([dirname,files(i).name], nlevels);
 asd  = [asd, fv];

end
