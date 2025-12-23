// Ejercicio 13 - Funciones
// Problema: Queremos crear un programa que trabaje con fracciones a/b. Para representar una fracción vamos a utilizar dos enteros: numerador y denominador. Vamos a crear las siguientes funciones para trabajar con funciones:
// 1-Leer_fracción: La tarea de esta función es leer por teclado el numerador y el denominador. Cuando leas una fracción debes simplificarla.
// 2-Escribir_fracción: Esta función escribe en pantalla la fracción. Si el dominador es 1, se muestra sólo el numerador.
// 3-Calcular_mcd: Esta función recibe dos número y devuelve el máximo común divisor.
// 4-Simplificar_fracción: Esta función simplifica la fracción, para ello hay que dividir numerador y denominador por el MCD del numerador y denominador.
// 5-Sumar_fracciones: Función que recibe dos funciones n1/d1 y n2/d2, y calcula la suma de las dos fracciones. La suma de dos fracciones es otra fracción cuyo numerador=n1*d2+d1*n2 y denominador=d1*d2. Se debe simplificar la fracción resultado.
// 6-Restar_fracciones: Función que resta dos fracciones: numerador=n1*d2-d1*n2 y denominador=d1*d2. Se debe simplificar la fracción resultado.
// 7-Multiplicar_fracciones: Función que recibe dos fracciones y calcula el producto, para ello numerador=n1*n2 y denominador=d1*d2. Se debe simplificar la fracción resultado.
// 8-Dividir_fracciones: Función que recibe dos fracciones y calcula el cociente, para ello numerador=n1*d2 y denominador=d1*n2. Se debe simplificar la fracción resultado.
// Crear un programa que utilizando las funciones anteriores muestre el siguiente menú:
//  1.Sumar dos fracciones: En esta opción se piden dos fracciones y se muestra el resultado.
//  2.Restar dos fracciones: En esta opción se piden dos fracciones y se muestra la resta.
//  3.Multiplicar dos fracciones: En esta opción se piden dos fracciones y se muestra la producto.
//  4.Dividir dos fracciones: En esta opción se piden dos fracciones y se muestra la cociente.
//  5.Salir

//Entrada: El numerador y denominador ingresados (variables enteras).
//Salida: El MCD del numerador y denominador (variables enteras).
//Diseño:
// 1.Definir la función 'Calcular_mcd' y usar 'n', 'd' como argumentos y guardarla en la variable 'MCD'.
// 2.Hacer un repetir hasta que el denominador sea 0 debido a que solo de esa manera sabremos que obtuvimos el mcd.
// 3.Dividir por el cociente del numerador y denominador y guardarlo en residuo.
// 4.Ahora el denominador será el numerador y el denominador será el residuo.
// 5.Iterar hasta que se cumpla la condición y asignar a 'mcd' el valor del numerador.
// 6.Salimos de la función.
Funcion MCD = Calcular_mcd(n,d) 
	Repetir
		residuo = n % d
		n = d
		d = residuo
	Hasta Que d = 0
		mcd = n
FinFuncion

//Entrada: El numerador, denominador (variables enteras).
//Salida: El numeraodr y denominador simplificados (variables enteras).
//Diseño:
// 1.Crear la función 'Simplificar_fraccion' y usar como argumentos el numerador, denominador, la simplificación del numerador y del denominador.
// 2.Obtenemos la simplificación dividiendo tanto el numerador como el denominador por el MCD.
// 3.Salimos de la función.
Funcion Simplificar_fraccion(n Por Referencia, d Por Referencia, sf_n Por Referencia, sf_d Por Referencia)
    MCD = Calcular_mcd(n, d)
    sf_n = n / MCD
    sf_d = d / MCD
FinFuncion

//Entrada: El numerador y denominador que el usuario ingrese (variables enteras).
//Salida: No hay.
//Diseño:
// 1.Crear la función 'Leer_fraccion' con los argumentos 'n', 'd', 'sf_n' y 'sf_d'.
// 2.Pedirle al usuario que ingrese el numerador de la fracción y leerla.
// 3.Hacer un repetir hasta que el denominador sea diferente a cero por si el usuario se equivoca y porque una fracción no existe si el denominador es 0.
// 4.Pedirle al usuario que ingrese el denominador de la fracción y leerla.
// 5.Llamar a la función 'Simplificar_fracción' para reducirla si es posible.
// 6.Salir de la función.
Funcion Leer_fraccion(n Por Referencia,d Por Referencia,sf_n Por Referencia,sf_d Por Referencia)
	Imprimir Sin Saltar "Escribe el númerador: "
	Leer n
	Repetir
		Imprimir Sin Saltar "Ahora el denominador: "
		Leer d
	Hasta Que d <> 0
	Simplificar_fraccion(n,d,sf_n,sf_d)
FinFuncion

//Entrada: La función 'Leer_fraccion' (variable entera).
//Salida: No hay.
//Diseño:
// 1.Crear la función 'Leer_2_fracciones' con casi los mismos argumentos que cuando leiamos una.
// 2.Vamos a imprimir las dos fracciones relacionandolas con sus variables (son las mismas y solo cambian si es 1 o 2).
// 3.Invocamos 2 veces a la función pasada 'Leer_fraccion'.
// 4.Salimos de la función.
Funcion Leer_2_fracciones(n1 Por Referencia,d1 Por Referencia,sf_n1 Por Referencia,sf_d1 Por Referencia,n2 Por Referencia,d2 Por Referencia,sf_n2 Por Referencia,sf_d2 Por Referencia)
	Imprimir "Fraccion 1"
	Leer_fraccion(n1,d1,sf_n1,sf_d1)
	Imprimir "Fracción 2"
	Leer_fraccion(n2,d2,sf_n2,sf_d2)
FinFuncion

//Entrada: No hay.
//Salida: Las fracciones 1 y 2 simplificadas (variables enteras).
//Diseño:
// 1.Crear la función "Escribir_fracc" teniendo como argumentos los numeradores y denominadores simplificados.
// 2.Imprimir cada fracción con su versión simplificada para corroborar que sea lo que el usuario ingresó sea lo correcto.
// 3.Salir de la función
Funcion Escribir_fracc(sf_n1,sf_d1,sf_n2,sf_d2)
	Imprimir "Fracción 1:"
	Imprimir sf_n1,"/",sf_d1
	Imprimir "Fracción 2:"
	Imprimir sf_n2,"/",sf_d2
FinFuncion

//Entrada: Las versiones simplificadas de las dos fracciones (variables enteras).
//Salida: Las resultantes del numerador y denominador de la suma (variables enteras).
//Diseño:
// 1.Crear la función 'Sumar_fracciones' con las versiones simplificadas de las fracciones y las resultantes como argumento.
// 2.Para sumar fracciones, tenemos que multiplicar el 'n1' con el 'd2' y también 'n2' con 'd1', al final sumaremos ambos productos y esto estará en el numerador.
// 3.Para el denominador, solo multiplicar los denominadores.
// 4.Imprimir el tipo de operaciones que estamos haciendo.
// 5.Invocar la función 'Simplificar_fracción' usando como argumentos todos los numeradores y denominadores resultantes para reducir la fracción (si es posible).
// 6.Imprimir el numerador y denominador ya simplificados. 
// 7.Salir de la función.
Funcion Sumar_fracciones(sf_n1,sf_d1,sf_n2,sf_d2,nr,dr,sf_nr,sf_dr)
	nr = (sf_n1*sf_d2) + (sf_n2*sf_d1)
	dr = sf_d1 * sf_d2
	Imprimir "Suma de fracciones"
	Simplificar_fraccion(nr,dr,sf_nr,sf_dr)
	Imprimir sf_nr,"/",sf_dr
FinFuncion

//Entrada: Las versiones simplificadas de las dos fracciones (variables enteras).
//Salida: Las resultantes del numerador y denominador de la resta (variables enteras).
//Diseño:
// 1.Crear la función 'Restar_fracciones' con las versiones simplificadas de las fracciones y las resultantes como argumento.
// 2.Para restar fracciones, tenemos que multiplicar el 'n1' con el 'd2' y también 'n2' con 'd1', al final restamos el primero con el segundo producto y esto estará en el numerador.
// 3.Para el denominador, solo multiplicar los denominadores.
// 4.Imprimir el tipo de operaciones que estamos haciendo.
// 5.Invocar la función 'Simplificar_fracción' usando como argumentos todos los numeradores y denominadores resultantes para reducir la fracción (si es posible).
// 6.Imprimir el numerador y denominador ya simplificados. 
// 7.Salir de la función.
Funcion Restar_fracciones(sf_n1,sf_d1,sf_n2,sf_d2,nr,dr,sf_nr,sf_dr)
	nr = (sf_n1*sf_d2) - (sf_n2*sf_d1)
	dr = sf_d1 * sf_d2
	Imprimir "Resta de fracciones"
	Simplificar_fraccion(nr,dr,sf_nr,sf_dr)
	Imprimir sf_nr,"/",sf_dr
FinFuncion

//Entrada: Las versiones simplificadas de las dos fracciones (variables enteras).
//Salida: Las resultantes del numerador y denominador de la multiplicación (variables enteras).
//Diseño:
// 1.Crear la función 'Multiplicar_fracciones' con las versiones simplificadas de las fracciones y las resultantes como argumento.
// 2.Para multiplicar fracciones, tenemos que multiplicar el 'n1' con el 'n2' y también 'd2' con 'd1'.
// 3.Para el denominador, solo multiplicar los denominadores.
// 4.Imprimir el tipo de operaciones que estamos haciendo.
// 5.Invocar la función 'Simplificar_fracción' usando como argumentos todos los numeradores y denominadores resultantes para reducir la fracción (si es posible).
// 6.Imprimir el numerador y denominador ya simplificados. 
// 7.Salir de la función.
Funcion Multiplicar_fracciones(sf_n1,sf_d1,sf_n2,sf_d2,nr,dr,sf_nr,sf_dr)
	nr = sf_n1 * sf_n2
	dr = sf_d1 * sf_d2
	Imprimir "Multiplicación de fracciones"
	Simplificar_fraccion(nr,dr,sf_nr,sf_dr)
	Imprimir sf_nr,"/",sf_dr
FinFuncion

//Entrada: Las versiones simplificadas de las dos fracciones (variables enteras).
//Salida: Las resultantes del numerador y denominador de la multiplicación (variables enteras).
//Diseño:
// 1.Crear la función 'Dividir_fracciones' con las versiones simplificadas de las fracciones y las resultantes como argumento.
// 2.Para dividir fracciones, tenemos que multiplicar el 'n1' con el 'd2' y también 'd2' con 'n1' y proceder con la división como tal.
// 3.Imprimir el tipo de operaciones que estamos haciendo.
// 4.Invocar la función 'Simplificar_fracción' usando como argumentos todos los numeradores y denominadores resultantes para reducir la fracción (si es posible).
// 5.Imprimir el numerador y denominador ya simplificados. 
// 6.Salir de la función.
Funcion Dividir_fracciones(sf_n1,sf_d1,sf_n2,sf_d2,nr,dr,sf_nr,sf_dr)
	nr = sf_n1 * sf_d2
	dr = sf_d1 * sf_n2
	Imprimir "División de fracciones"
	Simplificar_fraccion(nr,dr,sf_nr,sf_dr)
	Imprimir sf_nr,"/",sf_dr
FinFuncion

//Entrada: La opción que el usuario ingrese (variable entera).
//Salida: La función según lo que el usuario haya ingresado (variable entera)
//Diseño:
// 1.Definir la variable 'option', así como los numeradores y denominadores que usaremos.
// 2.Crear un repetir hasta que, para que el usuario pueda usar el programa varias veces y en caso de poner el dígito equivocado solo se reinicie, será hasta 5 porque este marcará el fin del programa.
// 3.Dentro de el imprimiremos 1 si sumamos fracciones, 2 si las restamos, 3 si multiplicamos fracciones y 4 si las dividimos, obvio la opción 5 será para salir del programa.
// 4.Leeremos la opción del usuario.
// 5.Haremos una condición en que si la opcíon es menor o igual a 4 y mayor o igual a 1, leeremos las fracciones y las escribiremos, esto lo haremos invocando las funciones.
// 6.Haremos un según donde invocaremos cada función de operación según la entrada.
// 7.Finalmente haremos una condición en donde si la opción es igual a 5, saldremos del programa y del repetir, y solo mostraremos un mensaje de despedida.
Algoritmo Menú
	Definir option, n1, d1, sf_n1, sf_d1, n2, d2, sf_n2, sf_d2,nr,dr Como Entero
	Repetir
		Imprimir "Seleccione la operación que desee hacer"
		Imprimir "1.- Suma de fracciones"
		Imprimir "2.- Resta de fracciones"
		Imprimir "3.- Multiplicación de fracciones"
		Imprimir "4.- División de fracciones"
		Imprimir "5.- Salir del programa"
		Leer option
		
		Si option >= 1 Y option <= 4 Entonces
			Leer_2_fracciones(n1, d1, sf_n1, sf_d1, n2, d2, sf_n2, sf_d2)
			Escribir_fracc(sf_n1,sf_d1,sf_n2,sf_d2)
			Segun option Hacer
				1:
					Sumar_fracciones(sf_n1,sf_d1,sf_n2,sf_d2,nr,dr,sf_nr,sf_dr)
				2:
					Restar_fracciones(sf_n1,sf_d1,sf_n2,sf_d2,nr,dr,sf_nr,sf_dr)
				3:
					Multiplicar_fracciones(sf_n1,sf_d1,sf_n2,sf_d2,nr,dr,sf_nr,sf_dr)
				4:
					Dividir_fracciones(sf_n1,sf_d1,sf_n2,sf_d2,nr,dr,sf_nr,sf_dr)
			FinSegun
		FinSi
		
		Si option = 5 Entonces
			Imprimir "Fin del programa, hasta luego"
		FinSi
	Hasta Que option = 5
FinAlgoritmo
