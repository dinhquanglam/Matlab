function [x1,x2] = ptbac2(a,b,c)
delta = b^2 - 4*a*c;
if(a==0)
    disp('Nhap lai')
else
    if(delta<0)
        disp('phuong trinh vo nghiem')
        x1=[];
        x2= [];
    else if(delta ==0)
            disp('phuong trinh co nghiem kep')
            x1  = -b/(2*a);
             x2  = -b/(2*a);
        else if (delta >0)
                disp('phuong trinh co 2 nghiem phan biet')
                x1 = -b -sqrt(delta) / (2*a);
                x2 = -b +sqrt(delta) / (2*a);
            end
        end
    end
end
end

