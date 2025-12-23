//Ejercicio 8 - Cadenas de caracteres
//Problema: Realizar un programa que lea una cadena por teclado y convierta las mayúsculas a minúsculas y viceversa.
//Entrada: La cadena introducida por el usuario (variable de cadena).
//Salida: La misma cadena solo que con las mayúsculas y minúsculas invertidas (variable de cadena).
//Diseño:
// 1.Pedirle al usuario que escriba la palabra que sea.
// 2.Iniciar la variable cambio como una cadena vacia porque ahi se realizaran los ajustes.
// 3.Hacer un para que vaya de i = 1 hasta longitud de la palabra.
// 4.Dentro del para,comparar cada caracter y ver si es igual a la mayuscula, si si lo es agregarlo a cambio y ponerlo en minúsculas.
// 5.Ir anexando cuando es verdadero y hacer los cambios.
// 6.Mostrar la palabra cambiada.
Algoritmo Mayus_min
	Definir palabra,cambio como Cadena
	Definir carac Como Caracter
	cambio = ""
	Imprimir Sin Saltar "Escribe la palabra que se te ocurra: "
	Leer palabra
	Para i = 1 Hasta Longitud(palabra) Hacer
		carac = Subcadena(palabra,i,i)
		Si carac = Mayusculas(carac) Entonces
			cambio = cambio + Minusculas(carac)
		SiNo
			cambio = cambio + Mayusculas(carac)
		FinSi
	FinPara
	Imprimir "La palabra invertida de mayúsculas a minúsculas y viceversa queda como: ",cambio
FinAlgoritmo