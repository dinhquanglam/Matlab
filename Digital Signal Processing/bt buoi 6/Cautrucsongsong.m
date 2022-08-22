function [heso_TS, heso_MS, k] = Cautrucsongsong(TS, MS)
    [r, p, k] = residuez(TS, MS);
    length_TS = length(r);
    length_MS = length(p);
    %tuso
    if mod(length_TS, 2) == 0
        number_items = length_TS/2;
    else
        number_items = floor(length_TS/2) + 1;
        r(length_TS+1) = 0;
        p(length_MS+1) = 0;
    end
    
    heso_TS = zeros(number_items, 3);
    count=1;
    for i = 1:2:length_TS
        heso_TS(count,:)=r(i)*poly([p(i+1), 0]) + r(i+1)*poly([p(i), 0]);
        count=count+1;
    end
    %mauso
    if mod(length_MS, 2) == 0
        number_items = length_MS/2;
    else
        number_items = floor(length_MS/2) + 1;
        p(length_MS+1) = 0;
    end
    
    heso_MS = zeros(number_items, 3);
    count=1;
    for i = 1:2:length_MS
        heso_MS(count,:)=poly([p(i), p(i+1)]);
        count=count+1;
    end
end