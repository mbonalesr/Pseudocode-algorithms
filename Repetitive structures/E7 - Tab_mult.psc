// Ejercicio 7 - Estructura repetitiva
// Problema: Realizar una algoritmo que muestre la tabla de multiplicar de un número introducido por teclado.
// Entrada: El número que ingrese el usuario que quiera que su tabla se muestre (variable entera).
// Salida: Los diez valores de la tabla de multiplicar según el número de entrada (variable entera).
// Diseño:
// 1.Pedirle al usuario que escriba el nùmero del que quiera obtener su tabla de multiplicar y leerlo.
// 2.Realizar un para que vaya de 1 hasta 10, dentro de el se multiplicara num * i
// 3.Imprimir los resultados que muestren la tabla
Algoritmo Tab_mult
	Definir num,mult Como Entero
	Imprimir Sin Saltar "Sobre que número quieres su tabla de multiplicar? "
	Leer num
	Para i = 1 Hasta 10 Hacer
		mult = num * i
		Imprimir num, " x ",i," = ",mult
	FinPara
FinAlgoritmo
