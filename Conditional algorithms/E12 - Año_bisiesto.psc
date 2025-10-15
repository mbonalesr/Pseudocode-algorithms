//Ejercicio 12 - Estructura condicional
//Problema: Escribir un programa que lea un a�o indicar si es bisiesto. Nota: un a�o es bisiesto si es un n�mero divisible por 4, pero no si es divisible por 100, excepto que tambi�n sea divisible por 400.
//Entrada: El a�o que introduzca el usuario como variable entera. 
//Salida: La indicaci�n de si es a�o bisiesto o no.
//Dise�o:
//1. Pedirle al usuario que ingrese cualquier a�o (variable 'a�o').
//2. Si a�o % 4 = 0 entonces es bisiesto.
//3. Si no, no es bisiesto.
//4. Si a�o % 100 = 0 Y a�o % 400 = 0, si es bisiesto
//5. Si no, no es bisiesto.
//6. Mostrar resultados.
Algoritmo A�o_bisiesto
	Definir a�o Como Entero
	Imprimir "Escribe cualquier a�o: "
	Leer a�o
	Si a�o % 4 = 0 Entonces
		Si a�o % 100 <> 0 O a�o % 400 = 0 Entonces
			Imprimir "Es a�o bisiesto."
		SiNo
			Imprimir "No es a�o bisiesto."
		FinSi
	SiNo
		Imprimir "No es a�o bisiesto."
	FinSi
FinAlgoritmo
