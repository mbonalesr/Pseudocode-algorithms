//Ejercicio 17 - Estructura condicional
//Problema: Realiza un programa que pida por teclado el resultado (dato entero) obtenido al lanzar un dado de seis caras y muestre por pantalla el número en letras (dato cadena) de la cara opuesta al resultado obtenido.
//Nota 1: En las caras opuestas de un dado de seis caras están los números: 1-6, 2-5 y 3-4.
//Nota 2: Si el número del dado introducido es menor que 1 o mayor que 6, se mostrará el mensaje: "ERROR: número incorrecto.".
//Entrada: El número del 1 al 6 que ingresa el usuario (variable entera).
//Salida: La cara opuesta del número ingresado del dado (variable de caracteres).
//Diseño:
//1.Pedirle al usuario que ingrese un número del 1 al 6.
//2.Si num > 6 O num < 1, mostrar "ERROR: número incorrecto."
//3.Si no, segun num hacer:
//3.1 - 1: En la cara opuesta está el "seis".
//3.1 - 2: En la cara opuesta está el "cinco".
//3.1 - 3: En la cara opuesta está el "cuatro".
//3.1 - 4: En la cara opuesta está el "tres".
//3.1 - 5: En la cara opuesta está el "dos".
//3.1 - 6: En la cara opuesta está el "uno".
Algoritmo Dado
	Definir num Como Entero
	Imprimir "Introduzca número del dado: "
	Leer num
	Si num > 6 O num < 1 Entonces
		Imprimir "ERROR: número incorrecto."
	SiNo
		Segun num Hacer
			1: Imprimir "En la cara opuesta está el seis"
			2: Imprimir "En la cara opuesta está el cinco"
			3: Imprimir "En la cara opuesta está el cuatro"
			4: Imprimir "En la cara opuesta está el tres"
			5: Imprimir "En la cara opuesta está el dos"
			6: Imprimir "En la cara opuesta está el uno"
		FinSegun
	FinSi
FinAlgoritmo
