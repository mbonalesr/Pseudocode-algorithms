// Ejercicio 11 - Estructura repetitiva
// Problema: Escribe un programa que diga si un número introducido por teclado es o no primo. Un número primo es aquel que sólo es divisible entre él mismo y la unidad. Nota: Es suficiente probar hasta la raíz cuadrada del número para ver si es divisible por algún otro número.
// Entrada: El número introducido por el usuario (variable entera).
// Salida: El mensaje de si núm es primo o no lo es (variable de caracteres).
// Diseño:
// 1.Pedirle al usuario que escriba cualquier número.
// 2.Leer el número.
// 3.Si el número es menor que 1, agregar un mensaje de "Un número primo debe ser mayor que 1", y si no, seguir 
// 4.Hacer un para que vaya de 1 a la raíz del número introducido.
// 5.Dentro del para, dividir el número por si mismo y dividiendo entre 1 da su residuo % igual a 0, es primo
// 6.Mostrar resultados.
Algoritmo Num_primo
	Definir num Como Entero
	Definir es_primo Como Logico
	Imprimir Sin Saltar "Escribe cualquier número"
	Leer num 
	Si num <= 1 Entonces
		Imprimir "Número inválido"
		es_primo = Falso
	SiNo
		es_primo = Verdadero
		Para i = 2 Hasta raiz(num) Hacer
			Si num % i = 0 Entonces
				es_primo = Falso
			FinSi
		FinPara
		
		Si es_primo Entonces
			Imprimir "Número primo"
		SiNo
			Imprimir "Número compuesto"
		FinSi
	FinSi
FinAlgoritmo
