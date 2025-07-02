//Ejercicio 3 - Estructura secuencial
//Problema: Dados los catetos de un triángulo rectángulo, calcular su hipotenusa.
//Entrada: Cateto 1 y cateto 2 como Variables Reales.
//Salida: Hipotenusa del triangulo como variable real.
//Diseño:
//1.Preguntar al usuario por uno de los catetos.
//2.Preguntar por el otro cateto.
//3.Obtener hipotenusa mediante la fórmula.
//4.Mostrar la hipotenusa
Algoritmo Triangulo
	Definir cat1,cat2 Como Real
	Escribir "Dime el primero de los catetos:"
	Leer cat1
	Escribir "Dime el segundo de los catetos:"
	Leer cat2
	hip<-raiz((cat1)^2+(cat2)^2)
	Escribir "La hipotenusa del triángulo es ",hip
FinAlgoritmo