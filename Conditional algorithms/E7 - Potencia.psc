//Ejercicio 7 - Estructura condicional
//Problema: Realiza un algoritmo que calcule la potencia, para ello pide por teclado la base y el exponente. Pueden ocurrir tres cosas:
//- El exponente sea positivo, sólo tienes que imprimir la potencia.
//- El exponente sea 0, el resultado es 1.
//- El exponente sea negativo, el resultado es 1/potencia con el exponente positivo.
//Entrada: La base y el exponente, variables enteras.
//Salida: El resultado según el caso, variable real.
//Diseño
//1.Preguntarle al usuario por la base.
//2.Preguntarle al usuario por el exponente.
//3.Si el exponente < 0, imprimir 1/base^exp
//4.Si el exponente > 0, imprimir la potencia mediante base ^ exp.
//5.Si el exponente = 0, imprimir que el resultado es 1.
Algoritmo Potencia
	Definir base,expo,pot Como Real
	Imprimir "Escribe la base: "
	leer base
	Imprimir "Ahora el exponente"
	Leer expo
	Si expo < 0 Entonces
		pot = 1 / base ^ expo
		Imprimir "La potencia es: ",pot
	SiNo 
		pot = base ^ expo
		Imprimir "La potencia es: ",pot
	FinSi
	
FinAlgoritmo
