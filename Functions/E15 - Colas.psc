// Ejercicio 15 - Funciones
// Problema: Vamos a realizar un programa similar al anterior para trabajar con una cola. Una cola es una estructura de datos que nos permite guardar un conjunto de variables. La característica fundamental es que el primer elemento que se añade al conjunto es el primero que se puede sacar.
//En realidad nos sirven todas las funciones del ejercicio anterior menos la función 'SacarDeLaCola' que es la que tienes que modificar.

//Entrada: El vector 'c' y el tamaño de la cola 'size_c' (variable de cadena y entera).
//Salida: No hay, solo se modifica 'c'.
//Diseño: Recorre el vector y coloca '*' para indicar que la posición está vacía.
Funcion InicializarCola(c Por Referencia,size_c)
	Definir i Como Entero
	Para i = 1 Hasta size_c Hacer
		c[i] = "*"
	FinPara
FinFuncion

//Entrada: El vector 'c' y el tamaño de la cola 'size_c' (variable de cadena y entera).
//Salida: La variable 'size' que indicará la cantidad de elementos ocupados (variable entera).
//Diseño: Recorre el vector y cuenta cuantos elementos son distintos a '*'. 
Funcion size = LongitudCola(c,size_c)
	Definir size como Entero
	size = 0
	Mientras size = size_c Y c[size] <> '*' Hacer
		size = size + 1
	FinMientras
FinFuncion

//Entrada:  El vector 'c' y el tamaño de la cola 'size_c' (variable de cadena y entera).
//Salida: El indicador lógico 'res' (variable lógica)
//Diseño: Llama a 'LongitudCola' y si es igual a 0, significa que la cola está vacía.
Funcion res = EstaVaciaCola (c,size_c)
	Definir res Como Logico
	Si LongitudCola(c,size_c) = 0 Entonces
		res = Verdadero
	SiNo
		res = Falso
	FinSi
FinFuncion

//Entrada: El vector 'c' y el tamaño de la cola 'size_c' (variable de cadena y entera).
//Salida: El indicador lógico 'res' (variable lógica)
//Diseño: Llama a 'LongitudCola' y si es igual al tamaño máximo, significa que la cola está llena.
Funcion res = EstaLlenaCola (c,size_c)
	Definir res Como Logico
	
	Si LongitudCola(c,size_c) = size_c Entonces
		res = Verdadero
	SiNo
		res = Falso
	FinSi
FinFuncion

//Entrada: La cadena insertar 'cad', El vector 'c' y el tamaño de la cola 'size_c' (variable de cadenas y entera).
//Salida: No hay.
//Diseño: Verifica si la cola está llena usando EstaLlenaCola(c, size_c).
//Si no está llena:
// - Calcula la posición libre con LongitudCola(c, size_c).
// - Inserta el dato cad en esa posición.
//Si está llena:
// - Muestra un mensaje de error: "No se puede añadir el elemento, la cola está llena".
Funcion AddCola(cad,c Por Referencia, size_c)
	Si No EstaLlenaCola(c,size_c) Entonces
		pos = LongitudCola(c, size_c)
		c[pos] = cad
	SiNo
		Imprimir "No se puede añadir el elemento, la cola está llena"
	FinSi
FinFuncion

//Entrada: El vector 'c' y el tamaño de la cola 'size_c' (variable de cadena y entera).
//Salida: La cadena insertar 'cad'.
//Diseño: Verifica si la cola está vacía. Si no lo está:
// - Guarda el primer elemento (c[0])
// - Desplaza todos los elementos hacia adelante (c[i] = c[i+1])
// - Coloca "*" en la última posición
// - Devuelve el elemento extraído

Funcion cad = SacarDeLaCola(c Por Referencia, size_c)
	Definir cad Como Caracter
	Si No EstaVaciaCola(c,size_c) Entonces
		cad = c[0]
		Para i = 0 Hasta size_c - 2 Hacer
			c[i] = c[i + 1]
		FinPara
		c[size_c - 1] = "*"
	SiNo
		Imprimir "No se puede sacar elemento, la cola está vacía"
		cad = ""
	FinSi
FinFuncion

//Entrada: El vector 'c' y el tamaño de la cola 'size_c' (variable de cadena y entera).
//Salida: No hay
//Diseño: Recorre la cola desde el inicio e imprime todos los elementos distintos de "*", separados por espacio.
Funcion EscribirCola(c,size_c)
	Definir i Como Entero
	i = 0
	Mientras i < size_c Y c[i] <> "*" Hacer
		Imprimir Sin Saltar c[i]," "
		i = i + 1
	FinMientras
	Imprimir ""
FinFuncion

//Entrada: La opción que el usuario ingrese (variable entera).
//Salida: La función según lo que el usuario haya tecleado (variable entera).
//Diseño: Muestra un menú donde:
// - Inicializa la cola
// - Muestra un menú con 5 opciones
// - Ejecuta la acción correspondiente según la opción elegida
// - Repite hasta que el usuario elija salir
Algoritmo Menú
	Definir micola Como Caracter
	Dimension micola[3]
	Definir tam_cola,option Como Entero
	Definir elem Como Caracter
	tam_cola = 3
	InicializarCola(micola,tam_cola)
	Repetir
		Imprimir "Seleccione la acción que desee"
		Imprimir "1.- Añadir elemento a la cola"
		Imprimir "2.- Sacar elemento de la cola"
		Imprimir "3.- Longitud de la cola"
		Imprimir "4.- Mostrar cola"
		Imprimir "5.- Salir del programa"
		Leer option
		Segun option Hacer
			1:
				Imprimir Sin Saltar "Escribe la cadena para agregar a la cola: "
				Leer elem
				AddCola(elem,micola,tam_cola)
			2:
				Imprimir SacarDeLaCola(micola,tam_cola)
			3:
				Imprimir "Longitud: ",LongitudCola(micola,tam_cola)
			4:
				EscribirCola(micola,tam_cola)
			5:
				Imprimir "Fin del programa, hasta luego!"
			De Otro Modo:
				Imprimir "Opción inválida"
		FinSegun
	Hasta Que option = 5
FinAlgoritmo