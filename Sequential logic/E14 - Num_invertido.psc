//Ejercicio 14 - Estructura secuencial
//Problema: Dado un n�mero de dos cifras, dise�e un algoritmo que permita obtener el n�mero invertido. Ejemplo, si se introduce 23 que muestre 32.
//Entrada: N�mero de dos cifras ingresada por el usuario, variable entera.
//Salida: Conversi�n de ese n�mero volteado, variable entera.
//Dise�o:
//1.Pedirle al usuario que teclee los dos d�gitos.
//2.Convertir a texto el n�mero
//3.Hacer una subcadena para invertir el n�mero
//4.Convertir a n�mero la subcadena hecha
//5.Mostrar resultados.
Algoritmo Num_invertido
	Definir num, invert Como Real
	Definir conv, volt, volt2 Como Caracter
	Escribir "Dame un n�mero de dos d�gitos: "
	Leer num
	conv = ConvertirATexto(num)
	volt = Subcadena(conv,Longitud(conv),Longitud(conv))
	volt2 = Subcadena(conv,0,1)
	Escribir volt,volt2
FinAlgoritmo