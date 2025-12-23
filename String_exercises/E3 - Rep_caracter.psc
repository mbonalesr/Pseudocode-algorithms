//Ejercicio 3 - Cadenas de caracteres
//Problema: Pide una cadena y un carácter por teclado (valida que sea un carácter) y muestra cuantas veces aparece el carácter en la cadena.
//Entrada: La cadena y el carácter que el usuario escriba (variable de cadena y caracter).
//Salida: Las veces que aparece el carácter en la cadena (variable entera).
//Diseño:
// 1.Pedirle al usuario que escriba la palabra que sea.
// 2.Pedirle al usuario que escriba el carácter que quiera.
// 3.Iniciar el contador en 0.
// 4.Hacer un para que vaya de i = 1 hasta la longitud de la palabra.
// 5.Dentro de el para, validar con un si el caracter está en la palabra, que se vaya sumando al contador
// 6.Salir del para y mostrar el valor del contador
Algoritmo Rep_caracter
	Definir palabra como Cadena
	Definir carac Como Caracter
	Definir cont Como Entero
	Imprimir Sin Saltar "Escribe la palabra que quieras: "
	Leer palabra
	Imprimir Sin Saltar "Escribe el carácter que quieras: "
	Leer carac
	cont = 0
	Para i = 1 Hasta Longitud(palabra) Hacer
		Si carac = Subcadena(palabra,i,i) Entonces
			cont = cont + 1
		FinSi
	FinPara
	Imprimir "El carácter ",carac," aparece: ",cont, " veces"
FinAlgoritmo
