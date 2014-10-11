function varargout = readfile_mixed_format(infile, formatStr, varargin)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description: Read a text file of both numeric and non-numeric data
%
% Input:
%    infile: input file name
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fid = fopen(infile,'r');
if nargin > 2
    delimiter = varargin{1};
    C = textscan(fid, formatStr, 'Delimiter', delimiter);
else
    C = textscan(fid, formatStr);
end;
fclose(fid);

nout = max(nargout);
for k = 1:nout
   varargout{k} = C{k};
end;
