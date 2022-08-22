n = round(rand*10+1);
a = randn(1,n)
b = randn;
value = a;
for i=1:n
   if  value(1,i) < b
    value(1,i) = 0
else
    value(1,i) = 1
   end
c = value(1,i)
end
