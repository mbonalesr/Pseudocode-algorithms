// Ejercicio 11 - Estructura repetitiva
// Problema: Escribe un programa que diga si un n�mero introducido por teclado es o no primo. Un n�mero primo es aquel que s�lo es divisible entre �l mismo y la unidad. Nota: Es suficiente probar hasta la ra�z cuadrada del n�mero para ver si es divisible por alg�n otro n�mero.
// Entrada: El n�mero introducido por el usuario (variable entera).
// Salida: El mensaje de si n�m es primo o no lo es (variable de caracteres).
// Dise�o:
// 1.Pedirle al usuario que escriba cualquier n�mero.
// 2.Leer el n�mero.
// 3.Si el n�mero es menor que 1, agregar un mensaje de "Un n�mero primo debe ser mayor que 1", y si no, seguir 
// 4.Hacer un para que vaya de 1 a la ra�z del n�mero introducido.
// 5.Dentro del para, dividir el n�mero por si mismo y dividiendo entre 1 da su residuo % igual a 0, es primo
// 6.Mostrar resultados.
Algoritmo Num_primo
	Definir num Como Entero
	Definir es_primo Como Logico
	Imprimir Sin Saltar "Escribe cualquier n�mero"
	Leer num 
	Si num <= 1 Entonces
		Imprimir "N�mero inv�lido"
		es_primo = Falso
	SiNo
		es_primo = Verdadero
		Para i = 2 Hasta raiz(num) Hacer
			Si num % i = 0 Entonces
				es_primo = Falso
			FinSi
		FinPara
		
		Si es_primo Entonces
			Imprimir "N�mero primo"
		SiNo
			Imprimir "N�mero compuesto"
		FinSi
	FinSi
FinAlgoritmo
