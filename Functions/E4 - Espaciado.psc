// Ejercicio 4 - Funciones
// Problema: Crea un función "ConvertirEspaciado", que reciba como parámetro un texto y devuelve una cadena con un espacio adicional tras cada letra. Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use dicha función.
// Entrada: La frase ingresada por el usuario (variable de cadena).
// Salida: La frase del inicio pero separada con " " (variable de cadena).
// Diseño:
// 1.Hacer una funcion llamada 'ConvertirEspaciado' que tenga como argumento 'text'.
// 2.Crear una variable de cadena vacía llamada 'res'.
// 3.Hacer un para que vaya de 1 hasta la longitud de 'text'.
// 4.Dentro de el obtener la subcadena de cada letra y guardar en 'res' y el espaciado.
// 5.Afuera del para imprimir 'res'.
// 6.Dentro del algoritmo, definir 'ent' como cadena, le pediremos al usuario que escriba la frase que quiera y leeremos después 'ent'
// 7.Llamar a la función y usar como argumento 'ent'.
Funcion ConvertirEspaciado(text)
	res = ""
	Para i = 1 Hasta Longitud(text) Hacer
		letra = Subcadena(text,i,i)
		res = res + letra + " "
	FinPara
	Imprimir res
FinFuncion

Algoritmo Frase
	Definir ent como Cadena
	Imprimir Sin Saltar "Escibe la frase que se te ocurra: "
	Leer ent
	ConvertirEspaciado(ent)
FinAlgoritmo
