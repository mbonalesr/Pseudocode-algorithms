//Ejercicio 22 - Estructura condicional
//Problema: Solicita al usuario el número de un mes (1-12) y muestra cuántos días tiene ese mes (suponiendo que no es año bisiesto).
//Entrada: El número del uno al doce que ingrese el usuario (variable entera).
//Salida: El mensaje según con el mes que haya ingresado el usuario (variable de caracteres).
//Diseño:
//1.Pedirle al usuario que ingrese un número del 1 al 12.
//2.Si da un número menor que 1 o mayor que 12, mostrar el mensaje de "Mes no válido"
//3.Si no, entonces según mes escribir:
//3.1: 1 - "Enero tiene 31 días"
//3.1: 2 - "Febrero tiene 28 días"
//3.1: 3 - "Marzo tiene 31 días"
//3.1: 4 - "Abril tiene 30 días"
//3.1: 5 - "Mayo tiene 31 días"
//3.1: 6 - "Junio tiene 30 días"
//3.1: 7 - "Julio tiene 31 días"
//3.1: 8 - "Agosto tiene 31 días"
//3.1: 9 - "Septiembre tiene 30 días"
//3.1: 10 - "Octubre tiene 31 días"
//3.1: 11 - "Noviembre tiene 30 días"
//3.1: 12 - "Diciembre tiene 31 días"
//4.Mostrar resultados
Algoritmo Mes
	Definir mesi Como Entero
	Imprimir "Escribe cualquier número de mes: "
	Leer mesi
	Si mesi < 1 O mesi > 12 Entonces
		Imprimir "Mes no válido"
	SiNo
		Segun mesi Hacer
			1: Imprimir "Enero tiene 31 días"
			2: Imprimir "Febrero tiene 28 días"
			3: Imprimir "Marzo tiene 31 días"
			4: Imprimir "Abril tiene 30 días"
			5: Imprimir "Mayo tiene 31 días"
			6: Imprimir "Junio tiene 30 días"
			7: Imprimir "Julio tiene 31 días"
			8: Imprimir "Agosto tiene 31 días"
			9: Imprimir "Septiembre tiene 30 días"
			10: Imprimir "Octubre tiene 31 días"
			11: Imprimir "Noviembre tiene 30 días"
			12: Imprimir "Diciembre tiene 31 días"
		FinSegun
	FinSi
FinAlgoritmo
