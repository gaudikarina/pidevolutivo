function graficar2(x,num,den)
        t=0:0.001:1;
        pr=tf(num,den);
        kdg=x(1);
        kig=x(2);
        kpg=x(3);
        numc=[kdg kpg kig];
        denc=[1 0];
        c=tf(numc,denc);
        g1=series(pr,c);
        g=feedback(g1,1);                 
        figure;subplot(211)
        step(pr,'b',t);
        legend('planta');
        subplot(212)
        step(g,'r',t);
        legend('PID Evolutivo');
       
end
