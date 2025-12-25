// Ejercicio 7 - Ejercicios extra
// Problema: Diseñar un programa que permita adivinar al ordenador un determinado número entero y positivo para lo cual se deben leer los límites en los que está comprendido dicho número. El programa deberá ir mostrando números que recibirán las siguientes respuestas:
// - 'S', si es correcto.
// - 'A', si es más alto que el número a adivinar.
// - 'B', si es más bajo. Al finalizar el programa, se deberá escribir el número de intentos realizados para acertar el número.

// Entrada: El número mínimo y máximo que el usuario ingrese (variables enteras).
// Salida: No hay
// Diseño:
// 1.Crear la función 'Lim' con 'min' y 'max' como argumentos.
// 2.Pedirle al usuario que ingrese el límite inferior y leer la variable.
// 2.Pedirle al usuario que ingrese el límite superior y leer la variable.
// 4.Salir de la función.
Funcion Lim(min Por Referencia,max Por Referencia)
	Imprimir Sin Saltar "Ingresa el límite inferior que se encuentra tu número secreto: "
	Leer min
	Imprimir Sin Saltar "Ingresa el límite superior que se encuentra tu número secreto: "
	Leer max
FinFuncion

// Entrada: El número mínimo y máximo que el usuario ingrese (variables enteras).
// Salida: El número secreto que la computadora genere (variable entera).
// Diseño:
// 1.Crear la función 'Prop_num' con 'min' y 'max' como argumentos y guardarlo en la variable 'sec'.
// 2.Crear una condición en que si el número mínimo es mayor que el máximo, asignar al número secreto el valor del mínimo.
// 3.En el caso de que no se cumpla la condición, generar un número aleatorio en los intervalos del mínimo y máximo, guardarlo en la variable secreta.
// 4.Mostrar un mensaje con el número secreto.
// 5.Salir de la función.
Funcion sec = Prop_num(min,max)
	Si min > max Entonces
		sec = min
	SiNo
		sec = Aleatorio(min,max)
	FinSi
	Imprimir "Es el número secreto ",sec,"?"
FinFuncion

// Entrada: El número mínimo y máximo que el usuario ingrese, así como el número secreto (variables enteras).
// Salida: La respuesta del usuario (variable de caracter).
// Diseño:
// 1.Crear la función 'Respuesta' con 'min','max', 'sec' como argumentos y guardarlo en la variable 'resp'.
// 2.Definimos la respuesta como caracter.
// 3.Crear un repetir, hasta que el usuario escriba alguna de las respuestas válidas ('S', 'A' y 'B').
// 4.Mostrar un mensaje con las opciones válidas de respuesta y leer la variable 'resp'.
// 5.Convertir a mayúsculas la respuesta para evitar errores en el código.
// 6.Hacer un según que, de acuerdo a lo que sea 'resp', si es 'S' mostrar un mensaje que indique le atinó y que termino el juego.
// 7.Si la respuesta es 'A', mostrar un mensaje que el número propuesto es más alto y convertir el valor de máximo restandole al número secreto uno.
// 8.Si la respuesta es 'B', mostrar un mensaje que el número propuesto es más bajo y convertir el valor de mínimo sumandole al número secreto uno.
// 9.Incluir que cualquier otra respuesta, muestre un mensaje de error.
// 10.Salir de la función.
Funcion resp = Respuesta(sec,min Por Referencia,max Por Referencia) 
	Definir resp Como Caracter
	Repetir
		Imprimir "Escribe: -S- (Si), -A- (Es más Alto), -B- (Es más Bajo): "
		Leer resp
		resp = Mayusculas(resp)
		Segun resp Hacer
			'S': Imprimir "Número secreto encontrado, fin del juego"
			'A': 
				Imprimir "El número propuesto es más alto que el secreto"
				max = sec - 1
				
			'B':
				Imprimir "El número propuesto es más bajo que el secreto"
				min = sec + 1
				
			De Otro Modo:
				Imprimir "Letra incorrecta, vuelva a intentarlo"
		FinSegun
	Hasta Que (resp = "S") O (resp = "A") O (resp = "B")
FinFuncion

// Entrada: Las funciones hechas arriba previamente (variables de caracter y enteras).
// Salida: El contador de intentos (variable entera).
// Diseño:
// 1.Invocar a la función 'Lim' para obtener los mínimos y máximos.
// 2.Iniciar el contador en 0 así como la respuesta que sea una cadena vacía.
// 3.Crear un mientras donde si la respuesta es diferente a 'S', que invoque a la función de proponer un número, sume el contador 1 y también invocar a la respuesta.
// 4.Crear una condición donde si el minimo es mayor que el máximo, muestre un mensaje de error y asigne a la respuesta el valor de 'S'.
// 5.Salir del mientras e imprimir el contador.
Algoritmo Comprobación
	Definir minimo,maximo,sec,cont Como Entero
	Definir resp Como Caracter
	
	Lim(minimo,maximo)
	cont = 0
	resp = ""
	
	Mientras resp <> 'S'
		sec = Prop_num(minimo,maximo)
		cont = cont + 1
		resp = Respuesta(sec,minimo,maximo) 
		
		Si minimo > maximo Entonces
			Imprimir "Tus pistas son contradictorios"
			resp = "S"
		FinSi
	FinMientras
	
	Imprimir "- - - - - - - - - - - - - - - - - - - - - -"
	Imprimir "Número de intentos hechos: ",cont
FinAlgoritmo
