clc;
A =  [1,2,3,4,5,-6,7,8,9,-10];
for i=0:3
    mav = getMAV(A,10,i);
    display(mav);
end
ssi = getSSI(A);
display(ssi);

var = getVariance(A,10);
display(var);

rms = getRMS(A,10);
display(rms);

wl = getWL(A,10);
display(wl);

zc1 = getZC(A,10,0,0);
display(zc1);

ssc = getSSC(A,10,0);
display(ssc);

wa = getWA(A,10,0);
display(wa);

FEA = extractFeatures(A,0,0,0);
display(FEA);