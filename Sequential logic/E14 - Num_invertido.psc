//Ejercicio 14 - Estructura secuencial
//Problema: Dado un número de dos cifras, diseñe un algoritmo que permita obtener el número invertido. Ejemplo, si se introduce 23 que muestre 32.
//Entrada: Número de dos cifras ingresada por el usuario, variable entera.
//Salida: Conversión de ese número volteado, variable entera.
//Diseño:
//1.Pedirle al usuario que teclee los dos dígitos.
//2.Convertir a texto el número
//3.Hacer una subcadena para invertir el número
//4.Convertir a número la subcadena hecha
//5.Mostrar resultados.
Algoritmo Num_invertido
	Definir num, invert Como Real
	Definir conv, volt, volt2 Como Caracter
	Escribir "Dame un número de dos dígitos: "
	Leer num
	conv = ConvertirATexto(num)
	volt = Subcadena(conv,Longitud(conv),Longitud(conv))
	volt2 = Subcadena(conv,0,1)
	Escribir volt,volt2
FinAlgoritmo