// Ejercicio 9 - Estructura repetitiva
// Problema: Escribe un programa que dados dos números, uno real (base) y un entero positivo (exponente), saque por pantalla el resultado de la potencia. No se puede utilizar el operador de potencia.
// Entrada: La base del número (variable real), el entero positivo (variable entera).
// Salida: El resultado de la potencia (variable real).
// Diseño:
// 1. Pedirle al usuario la base y el entero.
// 2. Hacer un para que vaya de i = 1 a entero
// 3. Dentro de el vamos a multiplicar la base por nuestro acumulador 'pot'
// 4. 
// 5. Mostrar resultados
Algoritmo Potencia
	Definir base,pot Como Real
	definir ent Como Entero
	pot = 1
	Imprimir Sin Saltar "Escribe la base:"
	Leer base
	Imprimir Sin Saltar "Ahora el entero (positivo): "
	Leer ent
	Si ent < 0 Entonces
		Imprimir "Exponente no válido"
	SiNo
		Para i = 1 Hasta ent Hacer
			pot = base * pot
			Imprimir pot
		FinPara
	FinSi
FinAlgoritmo