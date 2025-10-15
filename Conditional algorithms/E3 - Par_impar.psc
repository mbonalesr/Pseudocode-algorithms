//Ejercicio 3 - Estructura condicional
//Problema: Escribe un programa que lea un número e indique si es par o impar.
//Entrada: Cualquier número, variable real.
//Salida: Indicar si es par o impar.
//Diseño:
//1. Preguntarle al usuario que escriba el número que sea.
//2. Checar la condición: Si num / 2 = 0 Entonces 
//3. Mostrar si es par o impar
Algoritmo Par_impar
	Definir num Como Real
	Escribir "Teclea cualquier número: "
	Leer num
	Si num % 2 = 0 Entonces
		Imprimir "Es par"
	SiNo
		Imprimir "Es impar"
	FinSi
FinAlgoritmo