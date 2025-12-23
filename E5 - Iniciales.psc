//Ejercicio 5 - Cadenas de caracteres
//Problema: Si tenemos una cadena con un nombre y apellidos, realizar un programa que muestre las iniciales en mayúsculas.
//Entrada: El nombre y los apellidos (variable de cadena).
//Salida: Las iniciales en mayúsculas (variable de caracteres).
//Diseño:
// 1.Pedirle al usuario su nombre completo.
// 2.Hacer una variable llamada iniciales de cadena, e inicializarla con "".
// 3.Hacer un para de i = 1 hasta longitud de nombre.
// 4.Dentro del para, hacer un si subcadena(nombre,i,i) = subcadena(nombre,i-1,i-1) entonces agregar la letra a inciales.
// 5.Salir del para e ir transformando iniciales a mayúsculas.
Algoritmo Iniciales
	Definir nombre,inicials Como Cadena
	inicials = ""
	Imprimir Sin Saltar "Escribe tu nombre completo: "
	Leer nombre
	Para i = 1 Hasta Longitud(nombre) Hacer
		Si i = 1 Entonces
			inicials = inicials + Subcadena(nombre, i, i)
		FinSi
		
		Si i > 1 Y Subcadena(nombre,i-1,i-1) = " " Y Subcadena(nombre,i,i) <> " " Entonces
			inicials = inicials + Subcadena(nombre,i,i)
		FinSi
	FinPara
	Imprimir Mayusculas(inicials)
FinAlgoritmo