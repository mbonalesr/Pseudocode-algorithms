//Ejercicio 6 - Estructura condicional
//Problema: Programa que lea una cadena por teclado y compruebe si es una letra may�scula.
//Entrada: La cadena de letras, variable de caracteres.
//Salida: Indicar si tiene una letra may�scula.
//Dise�o:
//1.Pedirle al usuario que escriba una palabra o cantidad de caracteres.
//2.Si la cadena contiene may�scula mostrar "Es may�scula".
//3.Si no, mostrar "No es may�scula".
Algoritmo Mayuscula
	Definir cad Como Caracter
	Escribir "Escribe una letra: "
	Leer cad
	Si Mayusculas(cad) = cad Entonces
		Escribir "Tiene may�sculas"
	SiNo
		Imprimir "No tiene may�sculas"
	FinSi
FinAlgoritmo
