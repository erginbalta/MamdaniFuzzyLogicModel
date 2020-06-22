firmalar = randi([0,20],1,10);
mevduat = randi([500000,2850000],1,10);
kredi = randi([150,450],1,10);
musteriler = randi([6200,30000],1,10);
giderler = randi([50000,120000],1,10);

for i= 1:10
   mamdani(firmalar(i),mevduat(i),kredi(i),musteriler(i),giderler(i));
end