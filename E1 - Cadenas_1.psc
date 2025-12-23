//Ejercicio 1 - Cadenas de caracteres
//Problema: Escribir por pantalla cada carácter de una cadena introducida por teclado.
//Entrada: La cadena que el usuario introduzca (variable de caracteres).
//Salida: Cada caracter impreso uno por uno (variable de caracteres).
//Diseño:
//1.Pedirle al usuario que escriba la palabra que quiera.
//2.Convertir la palabra a longitud para darle un valor entero.
//3.Hacer un para de 1 a la longitud de la palabra.
//4.Dentro del para, que imprima subcadena de i.
Algoritmo Cadenas_1
	Definir palabra Como Caracter
	Imprimir Sin Saltar "Escribe la palabra que quieras: "
	Leer palabra
	Para i = 1 Hasta Longitud(palabra) Hacer
		Imprimir Subcadena(palabra,i,i)
	FinPara
FinAlgoritmo
