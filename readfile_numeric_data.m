function M = readfile_numeric_data(infile, varargin)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description: Read a text file of only numeric data
%
% Input:
%    infile: input file name
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if nargin > 1
    delimiter = varargin{1};
    M = dlmread(infile,delimiter);
else
    M = dlmread(infile);
end;
