//Ejercicio 19 - Estructura condicional
//Problema: Escribe un programa que pida un número entero entre uno y doce e imprima el número de días que tiene el mes correspondiente.
//Entrada: El nùmero de dìas que ponga el usuario, variable entera.
//Salida: La cantidad de dias que tiene ese mes, variable entera.
//Diseño:
//1.Pedirle al usuario la cantidad de dias (entre 1 y 12).
//2.Si num < 1 o num > 12, imprimir "Nùmero incorrecto"
//3.Si no, segun num hacer:
//3.1 - 1,3,5,7,8,10,12: imprimir "31 días"
//3.2 - 2: imprimir "28 o 29 días".
//3.3 - 4,6,9,11: imprimir ""30 días".
Algoritmo Dias_mes
	Definir num Como Entero
	Imprimir "Escribe cualquier nùmero del 1 al 12: "
	Leer num
	Si num < 1 o num > 12 Entonces
		Imprimir "Número inválido."
	SiNo
		Segun num Hacer
			1,3,5,7,8,10,12: Imprimir "31 días"
			4,6,9,11: Imprimir "30 días"
			2: Imprimir "28 o 29 días"
		FinSegun
	FinSi
FinAlgoritmo
