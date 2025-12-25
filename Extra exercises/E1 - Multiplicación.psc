// Ejercicio 1 - Ejercicios extra
// Problema: Realice un programa que pregunte aleatóriamente una multiplicación. El programa debe indicar si la respuesta ha sido correcta o no (en caso que la respuesta sea incorrecta el programa debe indicar cuál es la correcta). El programa preguntará 10 multiplicaciones, y al finalizar mostrará el número de aciertos.

//Entrada: Los dos números que se vayan a multiplicar (variable entera).
//Salida: El resultado (variable entera)
//Diseño:
// 1.Crear la función 'Mult' con argumentos 'n1', 'n2' y 'r' por referencia.
// 2.Generar 'n1' como 'n2' del aleatorio de 1 y 15.
// 3.Multiplicar esos números y guardarlos en la variable 'r'.
// 4.Salir de la función.
Funcion Mult(n1 Por Referencia,n2 Por Referencia,r Por Referencia)
	n1 = Aleatorio(1,15)
	n2 = Aleatorio(1,15)
	r = n1 * n2
FinFuncion

//Entrada: Los dos números a multiplicar 'num1' y 'num2' (variable entera).
//Salida: El resultado 'res' que nos indicará si es correcto o no lo es (variable entera).
//Diseño:
// 1.Iniciar el contador 'acierto' igual a 0.
// 2.Hacer un para de 1 a 10 (que son las multiplicaciones que nos piden hacer) en donde primero invoquemos a la función 'Mult' y usemos como argumentos a 'num1', num2' y a 'r'.
// 3.Imprimiremos la multiplicación pero sin el resultado.
// 4.Leeremos la respuesta del usuario con 'res'.
// 5.Haremos una condición en que si el valor de 'r' y de 'res' es igual, que nos diga que la respuesta es correcta y que se le sume + 1 al contador.
// 6.En el caso de que no, imprimiremos que la respuesta es incorrecta y el resultado que era.
// 7.Salir del para e imprimir la cantidad total de aciertos.
Algoritmo Mult_rep
	Definir num1,num2,acierto,res Como Entero
	acierto = 0
	Para i = 1 Hasta 10 Hacer
		Mult(num1,num2,r)
		Imprimir num1," * ",num2
		Leer res
		Si r = res Entonces
			Imprimir "Respuesta correcta"
			acierto = acierto + 1
		SiNo
			Imprimir "Respuesta incorrecta, la correcta era ",r
		FinSi
	FinPara
	Imprimir "Tuviste en total: ",acierto," aciertos"
FinAlgoritmo