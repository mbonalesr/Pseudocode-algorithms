//Ejercicio 2 - Estructura secuencial
//Problema: Calcular el per�metro y �rea de un rect�ngulo dada su base y su altura.
//Entrada: Base y altura del rect�ngulo (Variable b y h como Reales)
//Salida: Perimetro y area del rectangulo (Valores reales)
//Dise�o:
//1.Pedirle al usuario la base del rect�ngulo.
//2.Pedirle al usuario la altura del rect�ngulo.
//3.Obtener mediante f�rmulas el per�metro y �rea del rect�ngulo.
Algoritmo Rect�ngulo
	Definir b,h Como Real
	Escribir "Dime la base del rect�ngulo: "
	Leer b
	Escribir "Dime la altura del rect�ngulo: "
	Leer h
	perimetro<-2*(b+h)
	area<-b*h
	Escribir "El per�metro del rect�ngulo es: ",perimetro
	Escribir "El �rea del rect�ngulo es: ",area
FinAlgoritmo