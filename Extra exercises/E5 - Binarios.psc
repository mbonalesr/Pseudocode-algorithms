// Ejercicio 5 - Ejercicios extra
// Problema: Vamos a realizar dos funciones: una que nos permita convertir un número entero a binario, y otra que nos permita convertir un numero binario a decimal.
// - ConvertirABinario: Función que recibe un número entero y devuelve una cadena con la representación del número en binario.
// - ConvertirADecimal: Función que recibe una cadena con la representación binaria de un número y devuelve el número en decimal.
// Crea un programa principal que permita convertir de decimal a binario y de binario a decimal.

//Entrada: El número decimal que el usuario ingrese (variable entera).
//Salida: El número binario convertido por el programa (variable entera).
// Diseño:
// 1.Crear la función 'ConvertirABinario' con 'n' como argumento que será el número decimal a convertir.
// 2.Inicializar la variable 'bi' como una cadena vacía.
// 3.Hacer un repetir hasta que el número sea 0, con el objetivo de que una vez que reduzcamos el número hasta el cero se termine la operación.
// 4.Dentro del repetir, dividir el número entre el módulo 2 y si da cero, significa que el bit es un '0' y se almacena primero poniendolo a la izquierda porque los binarios suelen leerse al revés.
// 5.En el caso de que no de cero, agregaremos un '1' en la cadena de igual forma para que nos de el número exacto.
// 6.Salir de la condición y dividir normal el número entre 2 para volver a hacer el proceso (pero solo usar su trunco ya que no trabaja con decimales).
// 7.Imprimir 'bi' y salir de la función.
Funcion ConvertirABinario(n)
	bi = ""
	Repetir
		Si n % 2 = 0 Entonces
			bi = "0" + bi
		SiNo
			bi = "1" + bi
		FinSi
		n = trunc(n / 2)
	Hasta Que n = 0 
	Imprimir "El número en binario es: ",bi
FinFuncion


//Entrada: El número binario que el usuario ingrese (variable entera).
//Salida:  El número decimal convertido por el programa (variable entera).
// Diseño:
// 1.Crear la función 'ConvertirADecimal' con 'bi' como argumento que será el número binario a convertir.
// 2.Iniciar la variable 'dec' en 0 que será de donde obtendremos el nuevo número.
// 3.Hacer un para que vaya de 1 hasta la longitud del número binario, dentro de el haremos una condición.
// 4.Si dentro de bi contiene la letra "1", obtendremos el decimal elevando 2 a la potencia de la resta entre la longitud del binario y la posición i, para así obtener la potencia correcta y sumarlo todo a 'dec'.
// 5.Salimos del para e imprimimos el número 'dec' 
Funcion ConvertirADecimal(bi)
	dec = 0
	Para i = 1 Hasta Longitud(bi) Hacer
		Si Subcadena(bi,i,i) = "1" Entonces
			dec = dec + 2 ^ (Longitud(bi) - i)
		FinSi
	FinPara
	Imprimir "El número en decimal es: ",dec
FinFuncion


//Entrada: El número decimal o binario que el usuario ingrese, así como la opción del menú (variables enteras).
//Salida: La función o cadena según la opción ingresada (variable entera o de cadena).
// Diseño:
// 1.Crear un repetir hasta que la opción sea 3, ya que será el indicador para salir del programa.
// 2.Mostrar en mensaje las opciones para que el usuario las elija.
// 3.Leer la opción del usuario.
// 4.Hacer un según 'option' hacer, donde si el usuario oprime 1, le pida el número decimal que quiera convertir a binario, luego leer el núm y despues invocar a la función 'ConvertirABinario' con 'num' como argumento.
// 5.Si la opción es 2, pedirle el número binario que quiera convertir a decimal, luego leer el binario y despues invocar a la función 'ConvertirADecimal' con 'binario' como argumento.
// 6.Si la opción es 3, mostrar un mensaje de despedida y si oprime algo diferente a esos 3 números, mostrar un mensaje de error y repetir el menú. (NOTA: El menú se repetirá sin importar que pase salvo que la opción sea 3).
// 7.Fin del algoritmo.
Algoritmo Menú
	Definir num,option Como Entero
	Definir binario como Cadena
	Repetir
		Imprimir "Calculadora de decimales y binarios, presione la opción que desee: "
		Imprimir "1 - Convertir de Decimal a Binario"
		Imprimir "2 - Convertir de Binario a Decimal"
		Leer option
		Segun option Hacer
			1: 
				Imprimir "Escribe el número decimal que quieras convertir a binario: "
				Leer num
				ConvertirABinario(num)
				
			2:
				Imprimir "Escribe el número binario que quieras convertir a decimal: "
				Leer binario
				ConvertirADecimal(binario)
				
			3:
				Imprimir "Fin del programa"
				
			De Otro Modo:
				Imprimir "Opción equivocada, selecciona una opción válida"
		FinSegun
	Hasta Que option = 3 
FinAlgoritmo
