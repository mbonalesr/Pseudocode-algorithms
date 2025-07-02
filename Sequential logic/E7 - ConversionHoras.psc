//Ejercicio 7 - Estructura secuencial
//Problema: Realiza un programa que reciba una cantidad de minutos y muestre por pantalla a cuantas horas y minutos corresponde. Por ejemplo: 1000 minutos son 16 horas y 40 minutos.
//Entrada: Cantidad de minutos introducida por el usuario. (Variable entera) 
//Salida: Conversión a horas y minutos de la cantidad introducida. (Variable real)
//Diseño
//1. Pedirle al usuario que introduzca la cantidad de minutos.
//2. Convertir esos minutos a horas dividiendolo entre 60.
//3. Convertir el restante a minutos obteniendo el residuo igual dividiendo entre 60.
//4. Mostrar resultados
Algoritmo ConversionHoras
	Definir ent Como Entero
	Definir hora, min Como Real
	Escribir "Introduce la cantidad de minutos a convertir: "
	Leer ent
	horas = trunc(ent / 60)
	min = ent % 60
	Escribir ent " minutos son ",horas " horas y ",min " minutos."
FinAlgoritmo
