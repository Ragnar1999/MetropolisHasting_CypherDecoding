% This piece of code does the job of data preprocess
% The first 842 and last 364 lines have already been deleted in the file "War and Peace.txt" 
% Following has been done: 
% 1. convert all letters to upper case
% 2. Only select  characters that in alph, new text is stored in 'data.txt'
clear;clc;
filename = 'War and Peace.txt';
file = fileread(filename)
upperfile = upper(file);

% Select the index of chars contained in alph
upperfile_asc=abs(upperfile)
upperfile_asc(~(((65<=upperfile_asc)&(upperfile_asc<=90))|(upperfile_asc==32)))=[]
upperfile=char(upperfile_asc)

% Using index array to get modified file, and store it in data.txt 
fileID = fopen("data.txt",'w');
fprintf(fileID,upperfile);
fclose(fileID);