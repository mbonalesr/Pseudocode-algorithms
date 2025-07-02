//Ejercicio 5- Estructura secuencial
//Problema: Calcular la media de tres números pedidos por teclado.
//Entrada: Los tres números (Variable Real)
//Salida: Promedio de los tres números (Variable Real)
//Diseño:
//1.Pedirle al usuario los tres números.
//2.Calcular el promedio de los tres números.
//3.Mostrar el resultado
Algoritmo Promedio
	Definir num1,num2,num3,prom Como Real
	Escribir "Dame el primer número: "
	Leer num1
	Escribir "Dame el segundo número: "
	Leer num2
	Escribir "Dame el tercer número: "
	Leer num3
	prom = (num1+num2+num3)/ 3
	Escribir "El promedio es: ",prom
FinAlgoritmo
