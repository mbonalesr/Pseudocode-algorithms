// Ejercicio 7 - Estructura repetitiva
// Problema: Realizar una algoritmo que muestre la tabla de multiplicar de un n�mero introducido por teclado.
// Entrada: El n�mero que ingrese el usuario que quiera que su tabla se muestre (variable entera).
// Salida: Los diez valores de la tabla de multiplicar seg�n el n�mero de entrada (variable entera).
// Dise�o:
// 1.Pedirle al usuario que escriba el n�mero del que quiera obtener su tabla de multiplicar y leerlo.
// 2.Realizar un para que vaya de 1 hasta 10, dentro de el se multiplicara num * i
// 3.Imprimir los resultados que muestren la tabla
Algoritmo Tab_mult
	Definir num,mult Como Entero
	Imprimir Sin Saltar "Sobre que n�mero quieres su tabla de multiplicar? "
	Leer num
	Para i = 1 Hasta 10 Hacer
		mult = num * i
		Imprimir num, " x ",i," = ",mult
	FinPara
FinAlgoritmo
