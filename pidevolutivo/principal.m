1
close all; clear all; clc
r=1;
while (r==1)
fprintf('                ALGORITMOS GENETICOS\n')
fprintf('                    PID EVOLUTIVO\n')
fprintf('                  Modelo de la planta\n')
num=input('    Numerador: ');
den=input('    Denominador: ');
fprintf('               Limites de Borde para Kp,Ki,Kd\n')
Umax_kd=input('   Valor Maximo para Kd: ');
Umin_kd=input('   Valor Minimo para Kd: ');
Umax_ki=input('   Valor Maximo para Ki: ');
Umin_ki=input('   Valor Minimo para Ki: ');
Umax_kp=input('   Valor Maximo para Kp: ');
Umin_kp=input('   Valor Minimo para Kp: ');
fprintf('                           Inicio...:) \n');
%%%Valores de borde maximo y minimo
lb=[Umin_kd Umin_ki Umin_kp];
ub=[Umax_kd Umax_ki Umax_kp];
%%%%%%%%%%opciones del toolbox ga

options = gaoptimset('PlotFcns',{@gaplotbestf});  
%%%% toolbox de algoritmos geneticos calculo del cromosoma
[xmin,feval,convergencia,salida,poblacion]=ga(@(x)objpid1(x,num,den),3,[],[],[],[],lb,ub,[],options);
%%%%%%%%%%%%%%%%
fprintf('                     \n                     Kd=%f\n\n                     Ki=%f\n\n                     Kp=%f\n\n',xmin(1),xmin(2),xmin(3));
fprintf('               Funcion evaluacion:%f\n',feval);
fprintf('               Salida:\n');salida
fprintf('               Graficando...:)\n');
fprintf('       Posee los Valores de Zieger Nichols\n')
fprintf('                     Su opcion? \n')
key=input('               (1):Si\n               (2):No\n               (0):Salir\n');
    switch key
        case 1
            kdz=input('               Kd: ');
            kiz=input('               Ki: ');
            kpz=input('               Kp: ');
            graficar3(xmin,kdz,kiz,kpz,num,den)
        case 2
            graficar2(xmin,num,den)
        otherwise
                break;
    end

fprintf('    \nFin...:)\n\n');
fprintf('               Desea hallar para otro modelo?\n\n')
r=input('               (1) Si: \n               (0)No: \n');
end

fprintf('Hasta Luego...:)');