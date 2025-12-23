// Ejercicio 14 - Funciones
// Problema: Vamos a crear un programa para trabajar con una pila. Una pila es una estructura de datos que nos permite guardar un conjunto de variables. La característica fundamental es que el último elemento que se añade al conjunto es el primero que se puede sacar.
//Para representar una pila vamos a utilizar un arreglo (vector) de cadena de caracteres con tamaño 10, por lo tanto la pila no podrá tener más de 10 elementos.
//Vamos a crear varias funciones para trabajar con la pila:
// - InicializarPila: Como tenemos un arreglo de 10 elementos de cadenas tenemos que inicializarlo e introducir un carácter (por ejemplo un * que indique que ese elemento del arreglo no corresponde con un dato de la pila. Esta función inicializa el vector con ese carácter.
// - LongitudPila: Función que recibe una pila y devuelve el número de elementos que tiene.
// - EstaVaciaPila: Función que recibe una pila y que devuelve si la pila está vacía, no tiene elementos.
// - EstaLlenaPila: Función que recibe una pila y que devuelve si la pila está llena.
// - AddPila: función que recibe una cadena de caracteres y una pila, y añade la cadena a la pila, si no está llena. si esta llena muestra un mensaje de error.
// - SacarDeLaPila: Función que recibe una pila y devuelve el último elemento añadido y lo borra de la pila. Si la pila está vacía muestra un mensaje de error.
// - EscribirPila: Función que recibe una pila y muestra en pantalla los elementos de la pila.
// Realiza un programa principal que nos permita usar las funciones anterior, que nos muestre un menú, con las siguientes opciones:
// 1.Añadir elemento a la pila
// 2.Sacar elemento de la pila
// 3.Longitud de la pila
// 4.Mostrar pila
// 5.Salir

//Entrada: No hay
//Salida: "*" que la función genera (variable de caracteres).
//Diseño:
// 1.Crear la función 'InicializarPila' con los argumentos 'p' y 'cont'.
// 2.Hacer un para de 1 hasta 10, donde dentro de el se llenarán de asteriscos los espacios.
// 3.Salir del para y de la función.
Funcion InicializarPila(p Por Referencia,cont)
	Para i = 1 Hasta 10 Hacer
		p[i] = "*"
	FinPara
FinFuncion

//Entrada: La pila con caracteres (variable de caracteres).
//Salida: La cantidad de caracteres en la pila (variable entera).
//Diseño:
// 1.Crear la función 'LongitudPila' con argumentos 'p', 'cont'.
// 2.Iniciar el contador igual a 0.
// 3.Hacer un para de 1 a 10, dentro del haremos una condición, en que si el valor es diferente a '*', sumaremos uno al contador.
// 4.Salir del para y de la función.
Funcion LongitudPila(p,cont Por Referencia)
	cont = 0
	Para i = 1 Hasta 10 Hacer
		Si p[i] <> "*" Entonces
			cont = cont + 1
		FinSi
	FinPara
FinFuncion

//Entrada: La pila (variable de caracteres).
//Salida: El resultado de si tiene valores o no (variable lógica).
//Diseño:
// 1.Crear la función 'EstaVaciaPila con argumentos 'p' y 'cont'.
// 2.Definir el resultado 'res' como lógico.
// 3.Invocar a la función 'LongitudPila'.
// 4.Hacer una condición en donde si el contador es igual a 0, significa que está vacia la pila y que 'res' es verdadero.
// 5.En caso de que no se cumpla con la condición, 'res' será falso.
// 6.Salimos de la función.
Funcion res = EstaVaciaPila (p,cont Por Referencia)
	Definir res Como Logico
	LongitudPila(p,cont)
	Si cont = 0 Entonces
		res = Verdadero
	SiNo
		res = Falso
	FinSi
FinFuncion

//Entrada: La pila (variable de caracteres).
//Salida: El resultado de si está llena o no (variable lógica).
//Diseño:
// 1.Crear la función 'EstaLlenaPila' con argumentos 'p' y 'cont'.
// 2.Definir el resultado 'res' como lógico.
// 3.Invocar a la función 'LongitudPila'.
// 4.Hacer una condición en donde si el contador es igual a 10, significa que está llena la pila y que 'res' es verdadero.
// 5.En caso de que no se cumpla con la condición, 'res' será falso.
// 6.Salimos de la función.
Funcion res = EstaLlenaPila (p,cont Por Referencia)
	Definir res Como Logico
	LongitudPila(p,cont)
	Si cont = 10 Entonces
		res = Verdadero
	SiNo
		res = Falso
	FinSi
FinFuncion

//Entrada: La pila (variable de caracteres).
//Salida: El mensaje de que la pila está llena o el caracter guardado (variable de cadena y caracter).
//Diseño:
// 1.Crear la función 'AddPila' con 'p' y 'e' como argumentos.
// 2.Invocar a la función 'EstaLlenaPila'
// 3.Hacer una condición en donde si el resultado es verdadero, imprima un mensaje de que la pila está llena.
// 4.En caso de que no, haceer un para de 1 a 10 donde dentro de el haremos otra condición.
// 5.Esta condición en que si el valor de i en la pila es '*', se sustituirá con el caracter.
// 6.Salimos del para y de la función.
Funcion AddPila(p Por Referencia, e Por Referencia)
	res = EstaLlenaPila(p,cont)
	Si res = Verdadero Entonces
		Imprimir "Lo siento, la pila esta llena"
	SiNo
		Para i = 1 Hasta 10 Hacer
			Si p[i] = "*" Entonces
				p[i] = e
			FinSi
		FinPara
	FinSi
FinFuncion

//Entrada: La pila y el contador (variable de caracteres y entera).
//Salida: El mensaje de que la pila está vacía o el caracter '*' (variable de cadena y caracter).
//Diseño:
// 1.Crear la variable 'SacarDeLaPila' con argumentos 'p' y 'cont'.
// 2.Apoyarnos de la variable 'saq', que será el caracter como tal y que nos ayudará a sacar los valores
// 3.Invocar a la función 'EstaVaciaPila'.
// 4.Hacer una condición en que si el contador es cero, imprima un mensaje que diga que la pila está vacía.
// 5.En caso de que sea falso, crear un para que vaya de 10 a 1, con paso a la -1.
// 6.Agregaremos otra condición, donde si el caracter de la pila es diferente a '*'.
// 7.Guardamos ese valor del caracter en saq, y después sustituirlo con un '*'.
Funcion saq = SacarDeLaPila(p Por Referencia, cont)
	Definir saq como Caracter
	res = EstaVaciaPila(p,cont)
	Si cont = 0 Entonces
		Imprimir "La pila esta vacía"
	SiNo
		Para i = 10 Hasta 1 Con Paso -1 Hacer
			Si p[i] <> "*" Entonces
				saq = p[i]
				p[i] = "*"
			FinSi
		FinPara
	FinSi
FinFuncion

//Entrada: La pila y el contador (variable de caracteres y entera).
//Salida: La pila actualizada (variable de caracteres).
//Diseño:
// 1.Crear la función 'EscribirPila' con argumentos 'p' y 'cont'.
// 2.Hacer un para que vaya de 10 hasta 1 con un paso negativo.
// 3.Dentro del para, hacer una condición en que si el caracter de la pila es diferente a "*", que imprima su valor.
// 4.Salimos del para y de la función.
Funcion EscribirPila(p,cont)
	Para i = 10 Hasta 1 Con Paso -1 Hacer
		Si p[i] <> "*" Entonces
			Imprimir p[i]
		FinSi
	FinPara
FinFuncion

//Entrada: La pila que el usuario ingrese, así como la opción del menú (variables enteras).
//Salida: La función según la opción ingresada (variable entera).
//Diseño:
// 1.Definir el vector 'pila' como caracter y que tenga una dimensión de 10.
// 2.También definiremos variables de apoyo como 'cont' y 'option' (entero) y 'elem' (caracter).
// 3.Iniciar el contador a 0.
// 4.Invocar a 'InicializarPila' para generarla antes de modificarla.
// 5.Hacer un repetir hasta que, la opción sea '5', porque así saldremos del programa e imprimiremos un mensaje de despedida.
// 6.Imprimiremos el menú de operaciones, el 1 hará que agreguemos elementos a la pila, aquí también leeremos el elemento e invocaremos a 'AddPila' para agregar este elemento.
// 7.El 2 sacará elementos de la pila, invocaremos a 'SacarDeLaPila' e imprimiremos el elemento sacado.
// 8.El 3 nos dirá cuanto mide la pila invocando a 'LongitudPila'.
// 9.El 4 nos mostrará la pila actual gracias a 'EscribirPila'.
Algoritmo Menú
	Definir pila,elem como Caracter
	Dimension pila[10]
	Definir cont,option Como Entero
	cont = 0
	InicializarPila(pila,cont)
	Repetir
		Imprimir "Seleccione la acción que desee"
		Imprimir "1.- Añadir elemento a la pila"
		Imprimir "2.- Sacar elemento de la pila"
		Imprimir "3.- Longitud de la pila"
		Imprimir "4.- Mostrar pila"
		Imprimir "5.- Salir del programa"
		Leer option
		
		Segun option Hacer
			1: 
				Imprimir Sin Saltar "Escribe la letra que quieras: "
				Leer elem
				AddPila(pila, elem)

			2:
				saq = SacarDeLaPila(pila, cont)
				Imprimir "Elemento sacado: ", saq

			3:
				LongitudPila(pila, cont)
				Imprimir "Longitud: ", cont

			4:
				EscribirPila(pila,cont)

			5:
				Imprimir "Fin del programa, hasta luego"

			De Otro Modo:
				Imprimir "Opción equivocada"
		FinSegun
	Hasta Que option = 5
FinAlgoritmo
