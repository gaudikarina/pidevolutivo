function graficar3(x,kd,ki,kp,num,den)
        t=0:1:100;
        pr=tf(num,den);
        kdg=x(1);
        kig=x(2);
        kpg=x(3);
        numc=[kdg kpg kig];
        denc=[1 0];
        c=tf(numc,denc);
        g1=series(pr,c);
        g=feedback(g1,1);
        %controlador zieger-nichols
        kdz=kd;
        kiz=ki;
        kpz=kp;
        numz=[kdz kpz kiz];
        denz=[1 0];
        cz=tf(numz,denz);
        g1z=series(pr,cz);
        gz=feedback(g1z,1);
       figure;subplot(311)
        step(pr,'b',t);
         legend('planta');
        subplot(312)
        step(gz,'g',t);
         legend('Ziegler-Nichols');
        subplot(313)
        step(g,'r',t);
        legend('PID Evolutivo');
end