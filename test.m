clear all;
filename = './sample.aris';
fid=fopen(filename,'rb');
b=fread(fid,1,'uint')
numframes = fread(fid,1,'uint')
framerate = fread(fid,1,'uint')
resolution = fread(fid,1,'uint')
numbeams = fread(fid,1,'uint')
a=fread(fid,1,'uint')
sampleperchannel = fread(fid,1,'uint')