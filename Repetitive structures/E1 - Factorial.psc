//Ejercicio 1 - Estructura repetitiva
//Problema: Crea una aplicación que pida un número y calcule su factorial (El factorial de un número es el producto de todos los enteros entre 1 y el propio número y se representa por el número seguido de un signo de exclamación. Por ejemplo 5! = 1x2x3x4x5=120).
//Entrada: El número que ingrese el usuario (variable entera).
//Salida: La multiplicación de esos números (variable entera).
//Diseño:
//1.Pedirle al usuario que ingrese un número cualquiera.
//2.Realizar un para que vaya de 1 hasta el numero deseado.
//3.Multiplicar i con fact para que multiplique y acumule hasta el número que queramos.
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