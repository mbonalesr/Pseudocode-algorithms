//Ejercicio 3 - Estructura condicional
//Problema: Escribe un programa que lea un n�mero e indique si es par o impar.
//Entrada: Cualquier n�mero, variable real.
//Salida: Indicar si es par o impar.
//Dise�o:
//1. Preguntarle al usuario que escriba el n�mero que sea.
//2. Checar la condici�n: Si num / 2 = 0 Entonces 
//3. Mostrar si es par o impar
Algoritmo Par_impar
	Definir num Como Real
	Escribir "Teclea cualquier n�mero: "
	Leer num
	Si num % 2 = 0 Entonces
		Imprimir "Es par"
	SiNo
		Imprimir "Es impar"
	FinSi
FinAlgoritmo