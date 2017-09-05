
clc;

for i=2:6
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\0\'),0);
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\1\'),1);
end

for i=8:9
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\0\'),0);
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\1\'),1);
end

for i=14:15
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\0\'),0);
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\1\'),1);
end

for i=17:23
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\0\'),0);
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\1\'),1);
end

for i=25:29
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\0\'),0);
    extractFeaturesFromDir(strcat('H:\Myo\Organized Data\',num2str(i),'\ParsedData\1\'),1);
end

display('done.');