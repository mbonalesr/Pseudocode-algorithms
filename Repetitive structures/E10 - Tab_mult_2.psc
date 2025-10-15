// Ejercicio 10 - Estructura repetitiva
// Problema: Algoritmo que muestre la tabla de multiplicar de los números 1,2,3,4 y 5.
Algoritmo Tab_mult_2
	Definir num,mult Como Entero
	Para num = 1 Hasta 5 Hacer
		Para j = 1 Hasta 10 Hacer
			mult = num * j
			Imprimir num, " x ",j," = ",mult
		FinPara
	FinPara
FinAlgoritmo
