function f = drawGraph(x,a,b,c)
hold on
subplot(2,1,1);
plot (x,a,'r');hold on
plot (x,b,'m'); hold on
plot (x,c,'g');hold off
axis([0 10 0 1.05]);
legend ('Az','Orta','Cok');
title('Fuzzy sets Az and Orta and Cok')
end