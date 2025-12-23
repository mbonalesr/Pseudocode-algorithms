// Ejercicio 3 - Funciones
// Problema: Crear una función que calcule la temperatura media de un día a partir de la temperatura máxima y mínima. Crear un programa principal, que utilizando la función anterior, vaya pidiendo la temperatura máxima y mínima de cada día y vaya mostrando la media. El programa pedirá el número de días que se van a introducir.
//Entrada: La temperatura mínima y máxima de los días que el usuario ingrese, así como los días (variables reales y entera).
//Salida: La temperatura media de cada día que el usuario haya ingresado (variable real).
//Diseño:
// 1.Crear una función llamada 'temp_med' que tenga como argumentos 'min','max'.
// 2.Dentro de ella que se calcule la media sumando 'min' más 'max', dividiendola entre 2 y que al final imprima el resultado.
// 3.Dentro del algoritmo, preguntarle al usuario cuántos días quiere obtener la temperatura media y leer la variable 'dias'.
// 4.Hacer un para de 1 hasta 'dias', dentro del para preguntaremos por la temperatura minima y la leeremos, así como la máxima y también se leerá.
// 5.Llamar a la función y usar como argumentos 'minimo' y 'maximo' para que nos de el resultado.
Funcion temp_med(min,max)
	med = (min + max) / 2
	Imprimir "Temperatura media: ",med," ºC"
FinFuncion

Algoritmo temp_dias
	Definir dias Como Entero
	Definir minimo,maximo Como Real
	Imprimir Sin Saltar "De cuántos días quieres obtener la temperatura? "
	Leer dias
	Para i = 1 Hasta dias Hacer
		Imprimir Sin Saltar "Dime la temperatura mínima del día ",i," :"
		Leer minimo
		Imprimir Sin Saltar "Dime la temperatura máxima del día ",i," :"
		Leer maximo
		temp_med(minimo,maximo)
	FinPara
FinAlgoritmo
