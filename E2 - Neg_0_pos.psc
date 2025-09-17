//Ejercicio 2 - Estructura condicional
//Problema: Algoritmo que pida un n�mero y diga si es positivo, negativo o 0.
//Entrada: El n�mero que introduzca el usuario.
//Salida: Un mensaje que indique si es positivo, negativo o 0.
//Dise�o:
//1. Pedirle al usuario que introduzca cualquier n�mero.
//2. Mediante un si evaluar cada caso:
// SI es mayor a 0, es positivo.
// Si es menor a 0, es negativo.
// Si no es menor o mayor a 0, entonces es igual a 0.
//3. Mostrar resultados.
Algoritmo Pos_neg_0
	Definir num Como Real
	Escribir "Escribe el primer n�mero que se te ocurra: "
	Leer num
	Si num < 0 Entonces
		Escribir "Es negativo"
	SiNo
		Si num = 0
			Escribir "Es igual a 0"
		SiNo
			Escribir "Es positivo"
		FinSi
	FinSi
	Escribir "Fin del programa"
FinAlgoritmo
