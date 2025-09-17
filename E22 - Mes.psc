//Ejercicio 22 - Estructura condicional
//Problema: Solicita al usuario el n�mero de un mes (1-12) y muestra cu�ntos d�as tiene ese mes (suponiendo que no es a�o bisiesto).
//Entrada: El n�mero del uno al doce que ingrese el usuario (variable entera).
//Salida: El mensaje seg�n con el mes que haya ingresado el usuario (variable de caracteres).
//Dise�o:
//1.Pedirle al usuario que ingrese un n�mero del 1 al 12.
//2.Si da un n�mero menor que 1 o mayor que 12, mostrar el mensaje de "Mes no v�lido"
//3.Si no, entonces seg�n mes escribir:
//3.1: 1 - "Enero tiene 31 d�as"
//3.1: 2 - "Febrero tiene 28 d�as"
//3.1: 3 - "Marzo tiene 31 d�as"
//3.1: 4 - "Abril tiene 30 d�as"
//3.1: 5 - "Mayo tiene 31 d�as"
//3.1: 6 - "Junio tiene 30 d�as"
//3.1: 7 - "Julio tiene 31 d�as"
//3.1: 8 - "Agosto tiene 31 d�as"
//3.1: 9 - "Septiembre tiene 30 d�as"
//3.1: 10 - "Octubre tiene 31 d�as"
//3.1: 11 - "Noviembre tiene 30 d�as"
//3.1: 12 - "Diciembre tiene 31 d�as"
//4.Mostrar resultados
Algoritmo Mes
	Definir mesi Como Entero
	Imprimir "Escribe cualquier n�mero de mes: "
	Leer mesi
	Si mesi < 1 O mesi > 12 Entonces
		Imprimir "Mes no v�lido"
	SiNo
		Segun mesi Hacer
			1: Imprimir "Enero tiene 31 d�as"
			2: Imprimir "Febrero tiene 28 d�as"
			3: Imprimir "Marzo tiene 31 d�as"
			4: Imprimir "Abril tiene 30 d�as"
			5: Imprimir "Mayo tiene 31 d�as"
			6: Imprimir "Junio tiene 30 d�as"
			7: Imprimir "Julio tiene 31 d�as"
			8: Imprimir "Agosto tiene 31 d�as"
			9: Imprimir "Septiembre tiene 30 d�as"
			10: Imprimir "Octubre tiene 31 d�as"
			11: Imprimir "Noviembre tiene 30 d�as"
			12: Imprimir "Diciembre tiene 31 d�as"
		FinSegun
	FinSi
FinAlgoritmo
