function [HN0 , HP0, HN45 , HP45, HN90 , HP90 , HN145 , HP145]=featureExtraction(I)
[ HN0 , HP0 ] = LTP2alpha(I,1);
[ HN45 , HP45 ] = LTP2alpha(I,2);
[ HN90 , HP90 ] = LTP2alpha(I,3);
[ HN145 , HP145 ] = LTP2alpha(I,4);
return;
end