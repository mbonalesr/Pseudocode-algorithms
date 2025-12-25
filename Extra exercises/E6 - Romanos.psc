// Ejercicio 6 - Ejercicios extra
// Problema: Crear un programa que convierta un número entero (mayor que 1 y menor o igual que 1000) a número romano

//Entrada: El número decimal que ingrese el usuario (variable entera).
//Salida: La cadena que se mapeo al dígito ingresado (variable de cadena).
//Diseño:
// 1.Crear la función 'ConvertirAUnidades' con 'n' que será el entero ingresado como argumento y guardarla en la variable 'u' que será donde estará la letra romana.
// 2.Definimos la cadena 'u' que contendrá la letra.
// 3.Hacer un según el número que ingresemos donde compara la entrada de 'n' en diversos casos.
// 4.Mapeamos el valor de 'n' a el valor de 'u' que contendrá la unidad romana del 1 al 9 y si no escribe nada el usuario o algo distinto, dejar la cadena vacía.
// 5.Salir de la función.
Funcion u = ConvertirAUnidades(n)
	Definir u como Cadena
	Segun n Hacer
		1: u = "I"
		2: u = "II"
		3: u = "III"
		4: u = "IV"
		5: u = "V"
		6: u = "VI"
		7: u = "VII"
		8: u = "VIII"
		9: u = "IX"
		De Otro Modo:
			u = ""
	FinSegun
FinFuncion

//Entrada: El número decimal que ingrese el usuario (variable entera).
//Salida: La cadena que se mapeo al dígito ingresado (variable de cadena).
//Diseño:
// 1.Crear la función 'ConvertirADecenas' con 'n' que será el entero ingresado como argumento y guardarla en la variable 'dec' que será donde estará la letra romana.
// 2.Definimos la cadena 'dec' que contendrá la letra.
// 3.Hacer un según el número que ingresemos donde compara la entrada de 'n' en diversos casos.
// 4.Mapeamos el valor de 'n' a el valor de 'u' que contendrá la decena romana del 1 al 9 y si no escribe nada el usuario o algo distinto, dejar la cadena vacía.
// 5.Salir de la función.
Funcion dec = ConvertirADecenas(n)
	Definir dec como Cadena
	Segun n Hacer
		1: dec = "X"
		2: dec = "XX"
		3: dec = "XXX"
		4: dec = "XL"
		5: dec = "L"
		6: dec = "LX"
		7: dec = "LXX"
		8: dec = "LXXX"
		9: dec = "XC"
		De Otro Modo:
			dec = ""
	FinSegun
FinFuncion

//Entrada: El número decimal que ingrese el usuario (variable entera).
//Salida: La cadena que se mapeo al dígito ingresado (variable de cadena).
//Diseño:
// 1.Crear la función 'ConvertirACentenas' con 'n' que será el entero ingresado como argumento y guardarla en la variable 'c' que será donde estará la letra romana.
// 2.Definimos la cadena 'c' que contendrá la letra.
// 3.Hacer un según el número que ingresemos donde compara la entrada de 'n' en diversos casos.
// 4.Mapeamos el valor de 'n' a el valor de 'u' que contendrá la centena romana del 1 al 9 y si no escribe nada el usuario o algo distinto, dejar la cadena vacía.
// 5.Salir de la función.
Funcion c = ConvertirACentenas(n)
	Definir c como Cadena
	Segun n Hacer
		1: c = "C"
		2: c = "CC"
		3: c = "CCC"
		4: c = "CD"
		5: c = "D"
		6: c = "DC"
		7: c = "DCC"
		8: c = "DCCC"
		9: c = "CM"
		10: c = "M"
		De Otro Modo:
			c = ""
	FinSegun
FinFuncion

//Entrada: El número decimal que ingrese el usuario (variable entera).
//Salida: El número decimal convertido a romano (variable de cadena).
//Diseño:
// 1.Crear la función 'ConvertirARomano' con el número decimal 'n' como argumento.
// 2.Obtener las centenas dividiendo el número entre 100 y solo obteniendo su trunco.
// 3.Calcularemos las centenas diviendo el número entre 100 y obteniendo su trunco, se guardará en la variable 'centenas'.
// 4.Seguimos ahora con las decenas primero dividiendo el número entre el módulo 100 para obtener el reiduo y luego dividimos entre y 10 y usamos el trunco para obtenerla, la guardamos en la variable 'decenas'.
// 5.Finalmente, para obtener las unidades dividiremos el número entre el módulo 10 ya que el residuo será la unidad, guardarla en la variable 'unidades'.
// 6.Llamaremos a la función 'ConvertirACentenas' con el dígito extraido 'centenas' y guardaremos el resultado en 'c'.
// 7.Después llamaremos a la función 'ConvertirADecenas' con el dígito extraido 'decenas' y guardaremos el resultado en 'dec'.
// 8.Y también llamaremos a la función 'ConvertirAUnidades' con el dígito extraido 'unidades' y guardarlo en 'u'.
// 9.Juntaremos las tres cadenas, o sea las 'c', 'dec', 'u' y lo guardaremos en 'romano'.
// 10.Imprimimos el número original y la variable 'romano'.
// 11.Salimos de la función.
Funcion ConvertirARomano(n)
	centenas = trunc(n / 100)
	decenas = trunc((n % 100) / 10)
	unidades = n % 10
	
	c = ConvertirACentenas(centenas)
	dec = ConvertirADecenas(decenas)
	u = ConvertirAUnidades(unidades)
	
	romano = c + dec + u
	Imprimir n, " en romano es: ",romano
FinFuncion
 
//Entrada: El número decimal que ingrese el usuario (variable entera).
//Salida: El número decimal convertido a romano o el mensaje de error (variable de cadena) .
//Diseño:
// 1.Le pediremos al usuario que escriba el 'num' decimal que desee convertir a número romano.
// 2.Leeremos el número.
// 3.Crear una condición en donde si el número es mayor a 1 y menor o igual a 1000, que llame a la función 'ConvertirARomano' con el 'num' como argumento.
// 4.En el caso de que no se cumpla con la condición, mostrar un mensaje de error.
Algoritmo Menú
	Definir num Como Entero
	Imprimir Sin Saltar "Escribe el número decimal que quieras convertir a número romano (1-1000): "
	Leer num
	Si (num > 1) y (num <= 1000) Entonces
		ConvertirARomano(num)
	SiNo
		Imprimir "Número fuera de límites"
	FinSi
FinAlgoritmo
