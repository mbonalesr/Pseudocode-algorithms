// Ejercicio 14 - Estructura repetitiva
// Problema: Una persona se encuentra en el kilómetro 70 de una carretera, otra se encuentra en el km 150, los coches tienen sentido opuesto y tienen la misma velocidad. Realizar un programa para determinar en qué kilómetro de esa carretera se encontrarán.
// Entrada: Los kilometros en los que se encuentran, uno en 70 y otro en 150 (variables enteras).
// Salida: Un mensaje en el kilometro que se encuentren (variable de carácteres).
// Diseño:
// 1.Inicializar variables 'k1' y 'k2' en 70 y 150 respectivamente.
// 2.Hacer un mientras ki <> k2.
// 3.Dentro de el ir sumando k1 = k1 + 1 y restando k2 = k2 - 1
// 4.Mostrar la distancia en cada iteración o al final (opcional).
Algoritmo Kilometro
	Definir k1,k2 Como Entero
	k1 = 70
	k2 = 150
	Mientras k1 <> k2 Hacer
		k1 = k1 + 1
		k2 = k2 - 1
	FinMientras
	Imprimir "Se encuentran en el kilometro: ",k1 " uno y el otro en: ",k2
FinAlgoritmo
