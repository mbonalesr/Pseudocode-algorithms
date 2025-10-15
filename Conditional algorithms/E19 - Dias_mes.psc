//Ejercicio 19 - Estructura condicional
//Problema: Escribe un programa que pida un n�mero entero entre uno y doce e imprima el n�mero de d�as que tiene el mes correspondiente.
//Entrada: El n�mero de d�as que ponga el usuario, variable entera.
//Salida: La cantidad de dias que tiene ese mes, variable entera.
//Dise�o:
//1.Pedirle al usuario la cantidad de dias (entre 1 y 12).
//2.Si num < 1 o num > 12, imprimir "N�mero incorrecto"
//3.Si no, segun num hacer:
//3.1 - 1,3,5,7,8,10,12: imprimir "31 d�as"
//3.2 - 2: imprimir "28 o 29 d�as".
//3.3 - 4,6,9,11: imprimir ""30 d�as".
Algoritmo Dias_mes
	Definir num Como Entero
	Imprimir "Escribe cualquier n�mero del 1 al 12: "
	Leer num
	Si num < 1 o num > 12 Entonces
		Imprimir "N�mero inv�lido."
	SiNo
		Segun num Hacer
			1,3,5,7,8,10,12: Imprimir "31 d�as"
			4,6,9,11: Imprimir "30 d�as"
			2: Imprimir "28 o 29 d�as"
		FinSegun
	FinSi
FinAlgoritmo
