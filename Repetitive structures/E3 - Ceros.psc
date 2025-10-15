//Ejercicio 3 - Estructura repetitiva
//Problema: Algoritmo que pida n�meros hasta que se introduzca un cero. Debe imprimir la suma y la media de todos los n�meros introducidos.
//Entrada: Los n�meros que introduzca el usuario (variable entera).
//Salida: La suma y media de todos los n�meros introducidos. (variable entera y real)
//Dise�o:
//1.Hacer un hasta que num = 0
//2.Pedirle al usuario que introduzca cualquier n�mero.
//3.Para sumar, inicializar su valor en 0, e ir sumando con su variable 'suma = suma + num'.
//4.Para la media, meter un contador que se sumara cada vez que un n�mero se agregue y al final hacer la ponderaci�n de la suma total con el contador para obtenerla.
//5.Mostrar resultados de la suma total
//6.Mostrar la media
Algoritmo Ceros
	Definir num,cont Como Entero
	Definir suma,media Como Real
	suma = 0
	media = 0
	cont = 0
	Repetir
		Imprimir Sin Saltar "Escribe cualquier n�mero"
		Leer num
		Si num <> 0 Entonces
			cont = cont + 1
			suma = suma + num
		FinSi
	Hasta Que num = 0 
	media = suma / cont
	Imprimir "La suma total es: ",suma
	Imprimir "El promedio es: ",media
FinAlgoritmo
