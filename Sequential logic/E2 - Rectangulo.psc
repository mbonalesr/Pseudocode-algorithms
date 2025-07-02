//Ejercicio 2 - Estructura secuencial
//Problema: Calcular el perímetro y área de un rectángulo dada su base y su altura.
//Entrada: Base y altura del rectángulo (Variable b y h como Reales)
//Salida: Perimetro y area del rectangulo (Valores reales)
//Diseño:
//1.Pedirle al usuario la base del rectángulo.
//2.Pedirle al usuario la altura del rectángulo.
//3.Obtener mediante fórmulas el perímetro y área del rectángulo.
Algoritmo Rectángulo
	Definir b,h Como Real
	Escribir "Dime la base del rectángulo: "
	Leer b
	Escribir "Dime la altura del rectángulo: "
	Leer h
	perimetro<-2*(b+h)
	area<-b*h
	Escribir "El perímetro del rectángulo es: ",perimetro
	Escribir "El área del rectángulo es: ",area
FinAlgoritmo