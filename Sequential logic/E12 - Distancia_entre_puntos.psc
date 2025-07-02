//Ejercicio 12 - Estructura secuencial
//Problema: Pide al usuario dos pares de números x1,y2 y x2,y2, que representen dos puntos en el plano. Calcula y muestra la distancia entre ellos.
//Entrada: Valores x1,y1,x2,y2 como real.
//Salida: La distancia entre los dos puntos usando la fórmula.
//Diseño:
//1.Que el usuario ingrese los valores de x1,y1,x2,y2.
//2.Calcular la distancia mediante la fórmula: d = raiz((x2-x1)^2 + (y2-y1)^2)
Algoritmo Distancia_entre_puntos
	Definir x1,y1,x2,y2,d Como Real
	Escribir "Dame el punto x1: "
	Leer x1
	Escribir "Dame el punto y1: "
	Leer y1
	Escribir "Dame el punto x2: "
	Leer x2
	Escribir "Dame el punto y2: "
	Leer y2
	d = raiz((x2-x1)^2 + (y2-y1)^2)
	Escribir "La distancia es de: ",d
FinAlgoritmo