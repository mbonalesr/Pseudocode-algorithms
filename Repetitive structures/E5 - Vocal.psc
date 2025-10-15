// Ejercicio 5 - Estructura repetitiva
// Problema: Algoritmo que pida caracteres e imprima "VOCAL" si son vocales y "NO VOCAL" en caso contrario, el programa termina cuando se introduce un espacio.
//Entrada: La letra o espacio que ingrese el usuario (variable de caracteres).
//Salida: EL mensaje "VOCAL", "NO VOCAL" según la letra o la terminación del programa al poner " "  (variable de caracteres).
//Diseño: 
//1.Pedirle al usuario que ingrese una letra.
//2.Hacer un repetir hasta que la letra sea " ".
//3.Dentro de el hacer un si letra = a,e,i,o,u imprimir "VOCAL".
//4.Si no se cumple, imprimir "NO VOCAL".
//5.Poner una variable de indicador llamado "espacio" que sea falso cuando este dentro del hasta que y verdadero saliendo de este.
Algoritmo Vocal
	Definir letra Como Caracter
	Definir espacio Como Logico
	Repetir
		espacio = Falso
		Imprimir Sin Saltar "Por favor, escribe una letra: "
		Leer letra
		Si Mayusculas(letra) = "A" o Mayusculas(letra) = "E" o Mayusculas(letra) = "I" o Mayusculas(letra) = "O" o Mayusculas(letra) = "U" Entonces
			Imprimir "VOCAL"
		SiNo
			Imprimir "NO VOCAL"
		FinSi
	Hasta Que letra = " "
	espacio = Verdadero
	Imprimir "Programa terminado, escribiste un espacio"
FinAlgoritmo