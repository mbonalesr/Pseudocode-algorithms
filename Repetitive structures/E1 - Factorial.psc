//Ejercicio 1 - Estructura repetitiva
//Problema: Crea una aplicaci�n que pida un n�mero y calcule su factorial (El factorial de un n�mero es el producto de todos los enteros entre 1 y el propio n�mero y se representa por el n�mero seguido de un signo de exclamaci�n. Por ejemplo 5! = 1x2x3x4x5=120).
//Entrada: El n�mero que ingrese el usuario (variable entera).
//Salida: La multiplicaci�n de esos n�meros (variable entera).
//Dise�o:
//1.Pedirle al usuario que ingrese un n�mero cualquiera.
//2.Realizar un para que vaya de 1 hasta el numero deseado.
//3.Multiplicar i con fact para que multiplique y acumule hasta el n�mero que queramos.
//4.Mostrar resultados.
Algoritmo Factorial
	Definir num,i,fact Como Entero
	fact = 1
	Imprimir Sin Saltar "Escribe cualquier entero: "
	Leer num
	Para i = 1 Hasta num Hacer
		fact = i * fact
	FinPara
	Imprimir fact
FinAlgoritmo