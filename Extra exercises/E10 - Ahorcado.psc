// Ejercicio 10 - Ejercicios extra
// Problema: Escribe un programa para jugar al ahorcado.
// - Un jugador introduce una palabra secreta y otro jugador tratará de adivinarla.
// - Aparecerá la palabra oculta (se mostrará un conjunto de asteriscos con la longitud de la palabra que hay que adivinar).
// - El programa te va pidiendo letras.
// - Si la letra está en la palabra, se mostrar la palabra mostrando las letras acertadas y los asteriscos en las letras que faltan por averiguar.
// - Cada vez que se introduce una letra se muestra las letras que has introducido anteriormente.
// - Si la letra no se encuentra en la palabra se suma un fallo. Según el número de fallos se mostrará el dibujo del ahorcado cada vez ms completo.
// - Si introduces todas las letras de la palabra has ganada y te mostrará el número de intentos que has necesitado.
// - Si produces 6 fallos, habrás perdido y se mostrará el dibujo del ahorcado completo.

//Entrada: La palabra que ingresó el jugador, los vectores vacíos (variables de cadena).
//Salida: Los vectores de la palabra y los asteriscos llenos según la longitud de la palabra secreta (variables de cadena).
//Diseño:
// 1.Converir la palabra secreta a mayúsculas para evitar errores.
// 2.Descomponer la cadena del secreto en asteriscos para que el usuario no vea la respuesta.
// 3.Mostrar la cadena de "*" en la pantalla.
// 4.Salir de la función
Funcion Generar_secreto(palabra_secreta Por Referencia,vec_secreto Por Referencia,vec_pantalla Por Referencia)
	Definir i Como Entero
	
	palabra_secreta = Mayusculas(palabra_secreta)
	Borrar Pantalla
	
	Para i = 1 Hasta Longitud(palabra_secreta)
		vec_secreto[i] = Subcadena(palabra_secreta,i,i)
		vec_pantalla[i] = "*"
	FinPara
	
	Imprimir "Palabra secreta generada"
	Para i = 1 Hasta Longitud(palabra_secreta) Hacer
		Imprimir Sin Saltar vec_pantalla[i]
	FinPara
	Imprimir ""
FinFuncion

//Entrada: Los vectores llenos, uno con la palabra secreta, la otra con la misma cantidad de caracteres que la palabra secreta pero lleno de puros "*" y la longitud de la palabra (variables de cadena y entera).
//Salida: Mensajes de acierto/error en cada turno y de victoria/derrota (variables de cadena).
//Diseño:
// 1.Iniciar los contadores 'errores' y 'aciertos' igual a 0, el 'total_letras' que se iguale a la 'cantidad' así como el 'historial' de las letras que sea una cadena vacía.
// 2.Vamos a crear un bucle principal con un repetir hasta que, en donde terminara cuando el usuario tenga 6 errores o acierte todas las letras.
// 3.Invocamos a la función que genera los ASCII del muñeco para que se vaya actualizando según el intento.
// 4.Mostraremos las letras usadas, así como la palabra secreta incompleta.
// 5.Le pediremos al segundo jugador ingresar una letra, la leeremos así como convertirla a mayúsculas.
// 6.Internamente sumaremos los caracteres usados en los turnos previos para evitar su repetición y usaremos una bandera lógica que nos dirá si hay coincidencias entre la letra ingresada y las letras del secreto.
// 7.Haremos otro ciclo con una búsqueda secuencial en donde recorremos todo el arreglo y comparamos la letra ingresada con la del vector y si son iguales, sustituir el vector de "*" y sumar un valor al acierto como cambiar la bandera de las coincidencias a verdadero.
// 8.Agregamos condiciones de retroalimentación donde si la bandera de coincidencias resulta ser verdadera, muestre un mensaje de acierto y en el caso de que no, muestre un mensaje con los errores acumulador y espere 2 segundos para limpiar pantalla (mejoramiento de la experiencia de usuario).
// 9.Finalmente haremos la evaluación final, en el caso de que los aciertos sean iguales a la cantidad de letras, mostraremos un mensaje de victoria e imprimiremos la palabra secreta.
// 10.En el caso de que el usuario pierda, mostramos un mensaje de derrota así como al muñeco ahorcado, de igual forma mostramos la palabra secreta también.
// 11.Salir de la función
Funcion Jugar_ahorcado(vec_secreto Por Referencia,vec_pantalla Por Referencia,cantidad)
	Definir errores,aciertos,total_letras,i,j Como Entero
	Definir letra_intento Como Caracter
	Definir coincidencias Como Logico
	Definir historial como Cadena
	
	errores = 0
	aciertos = 0
	total_letras = cantidad
	historial = ""
	
	Repetir
		Dibujar_Muñeco(errores)
		
		Imprimir "Letras usadas: ",historial
		Imprimir ""
		Imprimir "Palabra: " Sin Saltar
		
		Para i = 1 Hasta total_letras Hacer
			Imprimir Sin Saltar vec_pantalla[i]
		FinPara
		Imprimir ""
		
		Imprimir "Jugador 2, escriba una letra: "
		Leer letra_intento
		letra_intento = Mayusculas(letra_intento)
		historial = historial + letra_intento + " - "
		coincidencias = Falso
		
		Para j = 1 Hasta total_letras
			Si vec_secreto[j] = letra_intento Entonces
				Si vec_pantalla[j] = "*" Entonces
					vec_pantalla[j] = letra_intento
					aciertos = aciertos + 1
					coincidencias = Verdadero
				FinSi
			FinSi
		FinPara
		
		Si coincidencias = Verdadero Entonces
			Imprimir "Muy bien, la letra ",letra_intento," existe"
		SiNo
			errores = errores + 1
			Imprimir "Incorrecto, llevas ",errores," errores"
			Esperar 2 Segundos
		FinSi
		
	Hasta Que errores = 6 O aciertos = total_letras 
	
	Si aciertos = total_letras Entonces
		Imprimir "FELICIDADES, has ganado. La palabra es: " Sin Saltar
		
		Para i = 1 Hasta total_letras Hacer
			Imprimir Sin Saltar vec_secreto[i]
		FinPara
		
	SiNo
		Imprimir "Perdiste, te han AHORCADO, la palabra era: " Sin Saltar
		Para i = 1 Hasta total_letras Hacer
			Imprimir Sin Saltar vec_secreto[i]
		FinPara
	FinSi
FinFuncion

//Entrada: La cantidad de errores que el usuario tenga (variable entera).
//Salida: La representación gráfica del ahorcado según los errores que tenga (variable de cadena).
//Diseño:
// 1.Se van representando los errores mediante la construcción del muñeco.
// 2.Por ejemplo, cuando lleva 0 errores, el muñeco no existe, solo está el poste vacío.
// 3.Desde el primer error, se dibuja la cabeza y hasta el error 6 se completa el cuerpo completo.
// 4.Salir de la función.
Funcion Dibujar_Muñeco(intentos)
	Borrar Pantalla
	Segun intentos Hacer
		0:
			Imprimir "  +---+"
			Imprimir "  |   |"
			Imprimir "      |"
			Imprimir "      |"
			Imprimir "      |"
			Imprimir "========="
		1:
			Imprimir "  +---+"
			Imprimir "  |   |"
			Imprimir "  O   |"
			Imprimir "      |"
			Imprimir "      |"
			Imprimir "========="
		2:
			Imprimir "  +---+"
			Imprimir "  |   |"
			Imprimir "  O   |"
			Imprimir "  |   |"
			Imprimir "      |"
			Imprimir "========="
		3:
			Imprimir "  +---+"
			Imprimir "  |   |"
			Imprimir "  O   |"
			Imprimir " /|   |"
			Imprimir "      |"
			Imprimir "========="
		4:
			Imprimir "  +---+"
			Imprimir "  |   |"
			Imprimir "  O   |"
			Imprimir " /|\  |"
			Imprimir "      |"
			Imprimir "========="
		5:
			Imprimir "  +---+"
			Imprimir "  |   |"
			Imprimir "  O   |"
			Imprimir " /|\  |"
			Imprimir " /    |"
			Imprimir "========="
		6:
			Imprimir "  +---+"
			Imprimir "  |   |"
			Imprimir "  O   |"
			Imprimir " /|\  |"
			Imprimir " / \  |"
			Imprimir "========="
	FinSegun
FinFuncion

//Entrada: La palabra secreta ingresada por el jugador 1 (variable de cadena).
//Salida: Ejecución del juego mediante las funciones creadas previamente.
//Diseño:
// 1.Le pediremos al usuario que ingrese la palabra secreta y leeremos la variable.
// 2.Calculamos el tamaño necesario mediante la longitud de la palabra.
// 3.Definimos la dimensión de los vectores según el tamaño de la cadena.
// 4.Llamamos a la configuración del juego 'Generar_secreto' y a la ejecución del juego 'Jugar_ahorcado'.
Algoritmo Ahorcado
	Definir palabra_original,vec_secreto,vec_pantalla como Cadena
	Definir n Como Entero
	
	Imprimir "Jugador 1, ingresa la palabra secreta: "
	Leer palabra_original
	
	n = Longitud(palabra_original)
	Dimension vec_secreto[n]
	Dimension vec_pantalla[n]
	
	Generar_secreto(palabra_original,vec_secreto,vec_pantalla)
	Jugar_ahorcado(vec_secreto,vec_pantalla,n)
FinAlgoritmo