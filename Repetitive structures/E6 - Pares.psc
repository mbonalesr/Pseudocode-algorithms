// Ejercicio 6 - Estructura repetitiva
// Problema: Escribir un programa que imprima todos los n�meros pares entre dos n�meros que se le pidan al usuario.
// Entrada: Los dos n�meros que imprima el usuario (variable entera).
// Salida: Los n�meros pares que est�n dentro del rango de los dos n�meros (variable entera).
// Dise�o: 
// 1.Pedirle al usuario que ingrese el n�mero menor del rango y leerla.
// 2.Pedirle al usuario que ingrese el n�mero mayor del rango y leerla.
// 3.Realizar un para con i = menor y que vaya hasta mayor.
// 4.Dentro de el, hacer un si que si num % 2 = 0, que entonces imprima el valor
// 5.Afuera del para mostrar esos n�meros que son pares.
Algoritmo Pares
	Definir men,may Como Entero
	Imprimir Sin Saltar "Escribe el n�mero menor del rango: "
	Leer men 
	Imprimir Sin Saltar "Escribe el n�mero mayor del rango: "
	Leer may
	Para i = men Hasta may Hacer
		Si i % 2 = 0 Entonces
			Imprimir i
		FinSi
	FinPara
FinAlgoritmo