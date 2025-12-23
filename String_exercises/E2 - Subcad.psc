//Ejercicio 2 - Cadenas de caracteres
//Problema: Realizar un programa que comprueba si una cadena leída por teclado comienza por una subcadena introducida por teclado.
//Entrada: La cadena y subcadena (variables de caracteres)
//Salida: El mensaje si la subcadena es igual o no a la cadena (variable de caracteres).
//Diseño
// 1.Pedirle al usuario que escriba una cadena.
// 2.Pedirle ahora que escriba una subcadena.
// 3.Comparar y ver si tienen los primeros cuatro valores la subcadena con la cadena.
// 4.Si si, mostrar el mensaje "La cadena comienza con la subcadena" y si no mostrar ""La cadena NO comienza con la subcadena""
Algoritmo Subcad
	Definir cad,subc,verif Como Cadena
	cad = "Hola"
	Imprimir Sin Saltar "Ahora otra cosa: "
	Leer subc
	verif = Subcadena(cad,1,Longitud(subc))
	Si subc = verif Entonces
		Imprimir "La cadena comienza con la subcadena"
	SiNo
		Imprimir "La cadena NO comienza con la subcadena"
	FinSi
FinAlgoritmo
