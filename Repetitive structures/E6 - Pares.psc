// Ejercicio 6 - Estructura repetitiva
// Problema: Escribir un programa que imprima todos los números pares entre dos números que se le pidan al usuario.
// Entrada: Los dos números que imprima el usuario (variable entera).
// Salida: Los números pares que estén dentro del rango de los dos números (variable entera).
// Diseño: 
// 1.Pedirle al usuario que ingrese el número menor del rango y leerla.
// 2.Pedirle al usuario que ingrese el número mayor del rango y leerla.
// 3.Realizar un para con i = menor y que vaya hasta mayor.
// 4.Dentro de el, hacer un si que si num % 2 = 0, que entonces imprima el valor
// 5.Afuera del para mostrar esos números que son pares.
Algoritmo Pares
	Definir men,may Como Entero
	Imprimir Sin Saltar "Escribe el número menor del rango: "
	Leer men 
	Imprimir Sin Saltar "Escribe el número mayor del rango: "
	Leer may
	Para i = men Hasta may Hacer
		Si i % 2 = 0 Entonces
			Imprimir i
		FinSi
	FinPara
FinAlgoritmo