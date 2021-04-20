# Shaders

Autor: Carlos Javier Martín Perdomo

Descripción: Se propone un bucle que consiste en una cantidad de filas y columnas con movimiento de las filas y columnas pares. El numero de filas/columnas va cambiando con el tiempo. El color viene definido principalmente por la posicion del raton aunque se tienen varias cosntantes para que siempre se pueda diferenciar el fondo y las figuras. 

Decisiones de código:
  - Utilizando el editor de codigo para Shaders he creado un Shader que va iterando entre 3 y 8 filas/columnas de figuras. A su vez, el numero de filas/columnas determina la cantidad de lados de la figura, es decir: Cuando se tienen 3 filas/columnas, la figura tiene 3 lados; Cuando se tienen 4 filas/columnas la figura tiene 4 lados; Asi sucesivamente.
  - Se mueven las filas y columas pares cambiando entre movimient por filas y movimientos por columnas cada vez que se cambia el tamaño de filas/columnas.
  - Para decidir el color se usan las siguientes lineas de codigo siendo colorA el fondo y colorB el color de la figura:
  
  [IMAGEN]
  
  - Se ha reutilizado y mezclado codigo visto en clase.
  
Resultado:

![error](https://github.com/CarlosJavierMartin/Shaders/blob/master/gif.gif?raw=true)

Acciones realizadas:
  - Se mueve el raton por la pantalla para ver las distintas combinaciones de colores
  
Referencias:
  - Recursos de programación:
    - https://processing.org/reference/
    - https://thebookofshaders.com/edit.php
