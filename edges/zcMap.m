function zc = zcMap(zeros2D, threshold)
% zc = zcMap(zeros2D, threshold)
% Given an input 2D matrix that stores the slopes of zero-crossings,
% returns a logical matrix with 1 at the location of each zero-crossing 
% and 0 elsewhere. The input threshold is a fraction between 0.0 and 1.0. 
% Only zero-crossings whose slope is larger than this fraction of the 
% maximum slope value are preserved. To preserve all zero-crossings, 
% enter 0 for this threshold
threshold = threshold*max(max(zeros2D));
zc = (zeros2D > threshold);
