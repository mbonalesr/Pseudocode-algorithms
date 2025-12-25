// Ejercicio 9 - Ejercicios extra
// Problema: Vamos a programar el juego "Mastermind", para ello el programa debe "eligir" un número de cuatro cifras (sin cifras repetidas), que será el código que el jugador debe adivinar en la menor cantidad de intentos posibles. Cada intento consiste en una propuesta de un código posible que escribe el jugador, y una respuesta del programa. Las respuestas le darán pistas al jugador para que pueda deducir el código.
// - Número de "MUERTOS": Es la cantidad de dígitos que están en el número secreto y en la misma posición,
// - Número de "HERIDOS:" Es la cantidad de dígitos que están en el número secreto pero no en la misma posición.
//Por ejemplo, si el código que eligió el programa es el 2607, y el jugador propone el 1406, el programa le debe responder un MUERTO (el 0, que está en el código original en el mismo lugar, el tercero), y un HERIDO (el 6, que también está en el código original, pero en la segunda posición, no en el cuarto como fue propuesto).

//Entrada: El vector de 4 espacios vacíos (variable entera).
//Salida: El vector secreto generado (variable entera).
//Diseño: 
// 1.Crear la función 'Generar_secreto' con 'vector_sec' como argumento.
// 2.Definimos un indicador lógico para reconocer si los números son repetidos o no.
// 3.Hacemos un para que recorra el vector de la posición 1 a la 4.
// 4.Creamos un número 'candidato' que sea un número entre el 0-9.
// 5.Con otro para, recorremos las posiciones anteriores al número para corroborar que no exista ese número ya.
// 6.En caso de que sea único, asignarselo a la posición i y avanzar.
// 7.Salir de la función.
Funcion Generar_secreto(vector_sec Por Referencia)
	Definir es_unico Como Logico
	
	Para i = 1 Hasta 4 Hacer
		Repetir
			candidato = Aleatorio(0,9)
			es_unico = Verdadero
			
			Si i > 1 Entonces
				Para j = 1 Hasta i - 1 Hacer
					Si candidato = vector_sec[j] Entonces
						es_unico = Falso
					FinSi
				FinPara
			FinSi
		Hasta Que es_unico = Verdadero 
		
		vector_sec[i] = candidato
		//Imprimir "Casilla ",i," guardado: ",vector_sec[i]
	FinPara
FinFuncion

//Entrada:El vector de 4 espacios vacíos (variable entera).
//Salida: El vector lleno ingresado por el usuario (variable entera).
//Diseño: 
// 1.Crear la función 'Pedir_intento' con 'vector_int' como argumento.
// 2.Hacemos un bucle que recorra de la posición 1 a la 4.
// 3.Solicitaremos el número al usuario.
// 4.Crearemos una condición o filtro en donde si no está entre el 0-9, muestre error y lo vuelva a pedir.
// 5.En el caso de que no se cumpla esa condición, guardaremos ese número en el vector.
// 6.Salimos de la función.
Funcion Pedir_intento(vector_int Por Referencia)
	Definir num Como Entero
	
	Para i = 1 Hasta 4 Hacer
		Repetir
			Imprimir Sin Saltar "Escribe cualquier número (0-9): "
			Leer num
			
			Si num < 0 O num > 9 Entonces
				Imprimir "Número inválido, intente de nuevo"
			FinSi
		Hasta Que (num >= 0 Y num <= 9)
		
		vector_int[i] = num
		Imprimir "Intento ",i," guardado: ",vector_int[i]
	FinPara
FinFuncion

//Entrada: El código secreto y el intento del usuario (variables enteras).
//Salida: La cantidad de aciertos o casi aciertos (variables enteras)
//Diseño: 
// 1.Iniciar los contadores 'muertos', 'coinc' y 'herido' en 0.
// 2.Crear una bucle de la posición 1 a 4, en donde si coincide el número del secreto al del intento, incrementaremos 'muerto' uno.
// 3.Hacer un bucle anidado que en ambos casos vaya de 1 a 4, en donde en cada número del intento buscará si hay alguna coincidencia en el vector secreto, si existe incrementamos 'coinc' y mostramos un mensaje así como salir del bucle.
// 4.Calculamos los heridos, restandoles los muertos a coincidencias.
// 5.Mostramos los 'muertos' y 'heridos'.
// 6.Salir de la función.
Funcion aciertos = Comparar_jugada(vector_sec Por Referencia, vector_int Por Referencia)
	Definir muerto,herido,coinc Como Entero
	muerto = 0
	coinc = 0
	herido = 0
	
	Para i = 1 Hasta 4 Hacer
		Si vector_sec[i] = vector_int[i] Entonces
			muerto = muerto + 1
			Imprimir "Muerto!"
		FinSi
	FinPara
	
	Para i = 1 Hasta 4 Hacer
		Para j = 1 Hasta 4 Hacer
			Si vector_int[i] = vector_sec[j]
				coinc = coinc + 1
				Imprimir "Herido!"
			FinSi
		FinPara
	FinPara
	
	herido = coinc - muerto
	Imprimir "---------------------------------"
    Imprimir "RESULTADO: ", muerto, " MUERTOS y ", herido, " HERIDOS"
    Imprimir "---------------------------------"
	aciertos = muerto
FinFuncion

//Entrada: Los intentos del usuario (variable entera).
//Salida: Mensajes de retroalimentación de que falló o tuvo éxito (cadenas).
//Diseño: 
// 1.Declaramos el tamaño de los vectores 'secreto' e 'intento' que son igual a 4.
// 2.Invocamos a 'Generar_secreto'.
// 3.Creamos un bucle en donde se detiene hasta que los aciertos sean iguales a 4.
// 4.Dentro llamaremos a 'Pedir_intento' y a 'Comparar_jugada'.
// 5.Evaluaremos los aciertos y los asociaremos a los 'muertos_obtenidos'.
// 6.Si el usuario falla, mostramos un mensaje de error.
// 7.Salimos del bucle y mostramos un mensaje de felicitación.
Algoritmo Mastermind
	Definir secreto,intento,muertos_obtenidos Como Entero
	Dimension secreto[4]
	Dimension intento[4]
	Generar_secreto(secreto)
	muertos_obtenidos = 0
	
	Repetir
		Imprimir "MASTERMIND"
		Pedir_intento(intento)
		muertos_obtenidos = Comparar_jugada(secreto,intento)
		
		Si muertos_obtenidos < 4 Entonces
			Imprimir "Fallaste, intentalo de nuevo"
		FinSi
	Hasta Que muertos_obtenidos = 4 
	
	Imprimir "Felicidades, has hackeado al sistema1"
	
FinAlgoritmo
