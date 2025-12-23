//Ejercicio 4 - Cadenas de caracteres
//Problema: Suponiendo que hemos introducido una cadena por teclado que representa una frase (palabras separadas por espacios), realiza un programa que cuente cuantas palabras tiene.
//Entrada: La frase introducida por el usuario (variable de cadena).
//Salida: La cantidad de palabras que tiene la frase (variable entera).
//Diseño:
// 1.Pedirle al usuario que escriba la frase que quiera.
// 2.Hacer un para que vaya de i = 1 hasta longitud de frase.
// 3.Dentro del para hacer un si subcadena de la palabra = " ", entonces que se agregue al contador
// 4.Salir del para y mostrar el total del contador.
Algoritmo Frase
	Definir fras Como Cadena
	Definir cont,tot Como Entero
	cont = 0
	tot = 0
	Imprimir Sin Saltar "Escribe la frase que quieras: "
	Leer fras
	Para i = 1 Hasta Longitud(fras) Hacer
		Si Subcadena(fras,i,i) = " " Entonces
			cont = cont + 1
		FinSi
	FinPara
	tot = cont + 1
	Imprimir "La cantidad de palabras que tiene la frase es de: ",tot
FinAlgoritmo