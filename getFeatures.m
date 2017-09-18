function[features] = getFeatures(data,tZC,tSSC,tWA)
    len = length(data);
    
    datamin = min(data); datamax = max(data); datamean = mean(data);
    data = (data-repmat(datamean,len,1))./repmat(datamax-datamin,len,1);
    
    %data = mapminmax(data);
    
    features(1) = getMAV(data,len,0);
    features(2) = getMAV(data,len,1);
    features(3) = getMAV(data,len,2);
    features(4) = getMAV(data,len,3);
    features(5) = getSSI(data,len);
    features(6) = getVariance(data,len);
    features(7) = getRMS(data,len);
    features(8) = getWL(data,len);
    features(9) = getZC(data,len,tZC,0);
    features(10) = getSSC(data,len,tSSC);
    %features(11) = getWA(data,len,tWA);
end