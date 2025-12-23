//Ejercicio 10 - Cadenas de caracteres
//Problema: Introducir una cadena de caracteres e indicar si es un palíndromo. Una palabra palíndroma es aquella que se lee igual adelante que atrás.
//Entrada: La cadena de texto ingresada por el usuario (variable de cadena).
//Salida: El mensaje indicando si es palíndromo o no más la palabra (variable de cadena).
//Diseño:
// 1.Iniciar la variable de control llamada 'palindr' que detectara cuando sea la palabra palíndromo o no.
// 2.Pedirle al usuario que escriba la palabra que quiera para checar si es palíndromo o no.
// 3.Iniciar 'invertido' que es una cadena vacía para invertir la palabra que el usuario ponga.
// 4.Bajar a minusculas la palabra mediante la variable 'prep' para evitar problemas de conversión o comparación.
// 5.Hacer un para que vaya de la longitud de la palabra hasta su inicio (ósea 1) con un paso inverso o a la -1.
// 6.Invertir prep mediante invertido imprimiendo y anexando caracter por caracter.
// 7.Salir del para y comparar si prep es igual a invertido.
// 8.Si si son iguales, imprimir que se trata de un palíndromo y si no, decir que no lo es.
Algoritmo Palíndromo
	Definir palabra,prep,invertido como Cadena
	Definir palindr Como Logico
	palindr = Falso
	invertido = ""
	Imprimir Sin Saltar"Escribe la palabra que sea para ver si es un palíndromo: "
	Leer palabra
	prep = Minusculas(palabra)
	Para i = Longitud(prep) Hasta 1 Con Paso -1 Hacer
		invertido = invertido + Subcadena(prep,i,i)
	FinPara
	
	Si prep = invertido Entonces
		palindr = Verdadero
		Imprimir prep," es un palíndromo"
	SiNo
		Imprimir prep," NO es un palíndromo"
	FinSi
FinAlgoritmo