//Ejercicio 2 - Estructura repetitiva
//Problema: Crea una aplicación que permita adivinar un número. La aplicación genera un número aleatorio del 1 al 100. A continuación va pidiendo números y va respondiendo si el número a adivinar es mayor o menor que el introducido,a demás de los intentos que te quedan (tienes 10 intentos para acertarlo). El programa termina cuando se acierta el número (además te dice en cuantos intentos lo has acertado), si se llega al limite de intentos te muestra el número que había generado.
//Entrada: El número que el usuario ingrese del 1-100 (variable entera).
//Salida: Un mensaje de que esta por abajo o por encima, o de que ya le atinó (variable de caracteres).
//Diseño:
//1.Pedirle al usuario que ingrese un número del 1-100.
//2.Mientras numero sea diferente a adivinar, hacer que vuelva a preguntar que ingrese el número.
//3.Si el num > adiv, entonces escribir "El número es menor".
//4.Si el num < adiv, entonces escribir "El número es mayor".
//5.Si el num = adiv, entonces escribir "Número adivinado". (En menos de 10 intentos)
Algoritmo Adivinar_num
	Definir adiv,num,intentos Como Entero
	Definir ganar Como Logico
	intentos = 10
	adiv = Aleatorio(1,100)
	Imprimir adiv
	Mientras adiv <> num Hacer
		Imprimir Sin Saltar "Adivina un número del 1-100:"
		Leer num
		Si intentos = 0 Entonces
			ganar = Falso
			Imprimir "Te quedaste sin intentos, el número era: ",adiv," ¡Perdiste!"
		SiNo
			Si num > adiv Entonces
				ganar = Falso
				intentos = intentos - 1
				Imprimir "El número es menor, te quedan ",intentos," intentos"
			SiNo
				ganar = Falso
				intentos = intentos - 1
				Imprimir "El número es mayor, te quedan ",intentos," intentos"
			FinSi
		FinSi
	FinMientras
	ganar = Verdadero
	Imprimir "Número adivinado, ganaste y te quedaron ",intentos, " intentos"
FinAlgoritmo
