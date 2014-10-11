function [num,txt,raw] = readfile_excel(infile, varargin)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description: Read a MS excel file of extension xls or xlsx
%
% Input:
%    infile: input file name
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sheet = 1;
if nargin > 1
    sheet = varargin{1};
end;

[num,txt,raw] = xlsread(filename,sheet);
