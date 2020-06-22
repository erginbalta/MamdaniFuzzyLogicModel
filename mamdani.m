function f = mamdani(firmalar,mevduat,kredi,insan,gider)
x = (0:0.2:1)';

axFaz= [0 5 7];
ayFaz = trimf(firmalar,axFaz);
axForta=[6 8 13];
ayForta= trimf(firmalar,axForta);
axFyuksek= [10 13 20];
ayFyuksek = trimf(firmalar, axFyuksek);
drawGraph(x,ayFaz,ayForta,ayFyuksek)

bxMdusuk= [0 500000 2000000];
byMdusuk = trimf(mevduat,bxMdusuk);
bxMorta= [1000000 1500000 2000000];
byMorta= trimf(mevduat,bxMorta);
bxMyuksek= [1750000 2450000 2850000];
byMyuksek= trimf(mevduat,bxMyuksek);
drawGraph(x,byMdusuk,byMorta,byMyuksek)

cxKdusuk = [0 150 200];
cyKdusuk= trimf(kredi,cxKdusuk);
cxKorta= [175 250 300];
cyKorta= trimf(kredi,cxKorta);
cxKyuksek= [275 350 450];
cyKyuksek= trimf(kredi,cxKyuksek);
drawGraph(x,cyKdusuk,cyKorta,cyKyuksek)


dxIaz= [0 6200 11250];
dyIaz= trimf(insan,dxIaz);
dxIorta= [10000 13520 20000];
dyIorta= trimf(insan,dxIorta);
dxIyuksek= [19800 25000 30000];
dyIyuksek= trimf(insan,dxIyuksek);
drawGraph(x,dyIaz,dyIorta,dyIyuksek)

exGaz=[0 50000 65000];
eyGaz= trimf(gider,exGaz);
exGorta= [60000 75000 90000];
eyGorta = trimf(gider,exGorta);
exGyuksek= [88000 100000 120000];
eyGyuksek= trimf(gider,exGyuksek);
drawGraph(x,eyGaz,eyGorta,eyGyuksek)

%rule1
resultRule1 = min([ayFaz,byMdusuk,cyKdusuk,dyIaz,eyGyuksek]);
plot(x,resultRule1)

%rule2
resultRule2 = min([ayFaz,byMorta,cyKorta,dyIyuksek,eyGorta]);
plot(x,resultRule2)

%rule3
resultRule3 = min([ayForta,byMorta,cyKyuksek,dyIaz,eyGorta]);
plot(x,resultRule3)

%rule4
resultRule4 = min([ayFyuksek,byMorta,cyKdusuk,dyIorta,eyGorta]);
plot(x,resultRule4)

%rule5
resultRule5 = min([ayFyuksek,byMyuksek,cyKdusuk,dyIorta,eyGorta]);
plot(x,resultRule5)

%rule6
resultRule6 = min([ayForta,byMyuksek,cyKyuksek,dyIorta,eyGaz]);
plot(x,resultRule6)

end