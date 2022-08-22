function [heso_TS, heso_MS] = Cautrucnoitiep(TS, MS)
%%Tim nghiem cua TS va MS
 nghiemTS = roots(TS);
 nghiemMS = roots(MS);
% %  Sap xep lai cac nghiem so phuc o tren va nghiem thuc o duoi
 nghiemTS_sx = cplxpair(nghiemTS);
 nghiemMS_sx = cplxpair(nghiemMS);

 %%So nghiem
 length_TS = length(nghiemTS_sx);
 length_MS = length(nghiemMS_sx);
 %%Tu so
 if mod( length_TS,2)==0
     number_items =  length_TS/2;
 else
     number_items = floor( length_TS/2) + 1; %lamtron
     nghiemTS_sx(length_TS+1)=0;
 end
heso_TS = zeros(number_items , 3);

count =1;
for i=1:2:length_TS
    heso_TS(count,:) = poly([nghiemTS_sx(i), nghiemTS_sx(i+1)]);
    count=count+1;
end

 %% Mau so
 
  if mod( length_MS,2)==0
     number_items =  length_MS/2;
 else
     numer_items = floor( length_MS/2) + 1; %lamtron
     nghiemMS_sx(length_TS+1)=0;
 end

heso_MS = zeros(number_items , 3);
count =1;
for i=1:2:length_TS
    heso_MS(count,:) = poly([nghiemMS_sx(i), nghiemMS_sx(i+1)]);
    count=count+1;
end

    
    
    

    
    
    
    