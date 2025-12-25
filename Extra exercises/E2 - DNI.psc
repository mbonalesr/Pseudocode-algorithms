// Ejercicio 2 - Ejercicios extra
// Problema: El DNI (Documento Nacional de Identidad) en España está formada por 8 números y una letra. La letra nos sirve para verificar que el número es correcto, por lo tanto la letra se calcula a partir del número. Busca información de cómo se realiza el calculo y crea una función CalcularLetra que recibe un número y devuelva la letra que le corresponde.
//La función anterior la podemos utiliza para crear una nueva función ValidarDNI que recibe un DNI (cadena de caracteres con 8 números y una letra) que valida el DNI, es decir comprueba si la letra del DNI ces igual a la letra calculada a partir del número.
//Realiza un programa principal que lea un DNI y valide que es correcto (se debe comprobar también que tiene 9 caracteres).

//Entrada: El número que el usuario ingrese (variable entera).
//Salida: La letra correspondiente gracias a la división
//Diseño:
// 1.Crear la función 'CalcularLetra' con 'n' como argumento que es el número que ingrese el usuario y se guarda en la variable 'letra' (variable de caracteres). 
// 2.Dividir el número por el módulo 23 y según su resultado se le asignará, si es 0, la letra sera T, si es 1, la letra será R. Así hasta 22 y la letra E.
// 3.Salir de la función.
Funcion letra = CalcularLetra(n Por Referencia)
	r = n % 23
	Segun r Hacer
		0: letra = "T"
		1: letra = "R"
		2: letra = "W"
		3: letra = "A"
		4: letra = "G"
		5: letra = "M"
		6: letra = "Y"
		7: letra = "F"
		8: letra = "P"
		9: letra = "D"
		10: letra = "X"
		11: letra = "B"
		12: letra = "N"
		13: letra = "J"
		14: letra = "Z"
		15: letra = "S"
		16: letra = "Q"
		17: letra = "V"
		18: letra = "H"
		19: letra = "L"
		20: letra = "C"
		21: letra = "K"
		22: letra = "E"
	FinSegun
FinFuncion

//Entrada: El DNI que el usuario ingrese (variable de cadena).
//Salida: El mensaje lógico si el DNI es valído (variable lógica).
//Diseño:
// 1.Crear la función 'ValidarDNI' con 'dni' como argumento y guardado en la variable 'val'.
// 2.Hacer una condición en que si la longitud del DNI es diferente a 9, entonces imprimirá un mensaje de error y indicará a la variable 'val' como falso.
// 3.En el caso de que la longitud sea 9, haremos 2 subcadenas, una será para transformar los 8 números de dni y la otra para sacar la letra nada más.
// 4.Invocaremos a la función 'letra = CalcularLetra(num)'.
// 5.Agregaremos otra condición en que si la letra de la función y la letra ingresada son iguales, imprimirá un mensaje indicando que es válido el DNI y cambiaremos a verdadero a 'val', en el caso que no, imprimiremos un mensaje de que las letras no coinciden y 'val' será falso.
// 6.Salimos de la función.
Funcion val = ValidarDNI(dni)
	Definir num Como Entero
	Definir let, letra Como Caracter
	Definir val Como Logico
	Si Longitud(dni) <> 9 Entonces
		Imprimir "Error, la cadena no es de 9 caracteres"
		val = Falso
	SiNo
		num = ConvertirANumero(Subcadena(dni,1,8))
		let = Subcadena(dni,9,9)
		letra = CalcularLetra(num)
		Si let = letra Entonces
			Imprimir "El DNI es válido"
			val = Verdadero
		SiNo
			Imprimir "Error, no coincide la letra ingresada con la registrada"
			val = Falso
		FinSi
	FinSi
FinFuncion

//Entrada: El DNI que el usuario ingrese (variable de cadena).
//Salida: El mensaje de si el DNI es válido o no lo es (variable de cadena).
//Diseño:
// 1.Definimos 'DNI' como caracter y 'validar' como lógico.
// 2.Pedirle al usuario que ingrese el DNI y leer la entrada.
// 3.Invocar a la función 'ValidarDNI' y guardarla en 'validar'.
Algoritmo Leer_DNI
	Definir DNI Como Caracter
	Definir validar Como Logico
	Imprimir Sin Saltar "Escribe el DNI: "
	Leer DNI
	validar = ValidarDNI(DNI)
FinAlgoritmo