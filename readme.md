# PID EVOLUTIVO

## CARACTERÍSTICAS DEL PROYECTO
  Se realizó un paquete ejecutable (.zip) que permite correr el programa en cualquier computadora así no tenga MATLAB®, para ello se recomienda leer primero el archivo readme.txt, donde se indica la instalación del MCRInstaller, necesario para poder ejecutar la aplicación, denominada pidevolutivo. 
   El programa consta de una pantalla principal, como se muestra en la Fig, en la cual se solicita al usuario introduzca en formato matricial (entre corchetes y separados por espacios)  los coeficientes del numerador y denominador de la función de transferencia de la planta a controlar.
  
![fig](https://github.com/gaudikarina/pidevolutivo/assets/71100137/5f8aaa8c-5be3-40eb-b4c9-c1b6d32e230a)

  Luego de esto, se solicita introduzca los valores límite de borde para las constantes del PID, y allí se inicia el cálculo del cromosoma por el algoritmo genético, y se muestra en una ventana un gráfico del mejor “fitnnes” (función objetivo) a medida que va iterando el algoritmo, como se observa en la Fig:
  
![fitness](https://github.com/gaudikarina/pidevolutivo/assets/71100137/0a799772-cb07-4c61-b3fa-94d45544eadc)


Al obtener un resultado se muestra en consola los valores de las constantes del PID, el valor final de la función objetivo, la convergencia, la población y un resumen de los valores utilizados en el toolboox de MATLAB®. Luego, el programa procederá a graficar los resultados, para ello, se pregunta al usuario, si posee algunos valores teóricos pre-calculados de las constantes por Ziegler Nichols, u otro método, de ser afirmativo, procederá a preguntar dichos valores y mostrara como resultado tres  gráficas, como se observa en la Fig:

![out](https://github.com/gaudikarina/pidevolutivo/assets/71100137/0ed2883c-7a7b-4679-ba85-4341f30b6b43)




  
