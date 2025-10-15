//Ejercicio 2 - Estructura repetitiva
//Problema: Crea una aplicaci�n que permita adivinar un n�mero. La aplicaci�n genera un n�mero aleatorio del 1 al 100. A continuaci�n va pidiendo n�meros y va respondiendo si el n�mero a adivinar es mayor o menor que el introducido,a dem�s de los intentos que te quedan (tienes 10 intentos para acertarlo). El programa termina cuando se acierta el n�mero (adem�s te dice en cuantos intentos lo has acertado), si se llega al limite de intentos te muestra el n�mero que hab�a generado.
//Entrada: El n�mero que el usuario ingrese del 1-100 (variable entera).
//Salida: Un mensaje de que esta por abajo o por encima, o de que ya le atin� (variable de caracteres).
//Dise�o:
//1.Pedirle al usuario que ingrese un n�mero del 1-100.
//2.Mientras numero sea diferente a adivinar, hacer que vuelva a preguntar que ingrese el n�mero.
//3.Si el num > adiv, entonces escribir "El n�mero es menor".
//4.Si el num < adiv, entonces escribir "El n�mero es mayor".
//5.Si el num = adiv, entonces escribir "N�mero adivinado". (En menos de 10 intentos)
Algoritmo Adivinar_num
	Definir adiv,num,intentos Como Entero
	Definir ganar Como Logico
	intentos = 10
	adiv = Aleatorio(1,100)
	Imprimir adiv
	Mientras adiv <> num Hacer
		Imprimir Sin Saltar "Adivina un n�mero del 1-100:"
		Leer num
		Si intentos = 0 Entonces
			ganar = Falso
			Imprimir "Te quedaste sin intentos, el n�mero era: ",adiv," �Perdiste!"
		SiNo
			Si num > adiv Entonces
				ganar = Falso
				intentos = intentos - 1
				Imprimir "El n�mero es menor, te quedan ",intentos," intentos"
			SiNo
				ganar = Falso
				intentos = intentos - 1
				Imprimir "El n�mero es mayor, te quedan ",intentos," intentos"
			FinSi
		FinSi
	FinMientras
	ganar = Verdadero
	Imprimir "N�mero adivinado, ganaste y te quedaron ",intentos, " intentos"
FinAlgoritmo
