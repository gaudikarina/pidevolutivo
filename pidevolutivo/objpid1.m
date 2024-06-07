%
function f=objpid1(x,num,den)
t=0:0.001:1;         %vector que establece la base de tiempo
pt=tf(num,den);
kd=x(1);% asignacion de valores del cromosoma
ki=x(2);
kp=x(3);
numc=[kd kp ki];% modelo pid
denc=[1 0];
c=tf(numc,denc);% calculo de la funcion de transferencia del pid
p=
g1=series(pt,c); % conexion serie del pid con la planta
g=feedback(g1,1);% calculo de lazo cerrado de todo el sistema
y=step(g,t); % respuesta escalon
rs=ones(length(y),1);%creacion vector de entrada
e=rs-y; %calculo del error entrada - salida
et=0; %inicializaion del contador
for i=1:length(e)
    et=et+abs(e(i));%claculo del error total
end
ep=et/length(e);%promedio
f=ep;%asignacion al fitness

end