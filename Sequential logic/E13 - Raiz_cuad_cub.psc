//Ejercicio 13 - Estructura secuencial
//Problema: Realizar un algoritmos que lea un n�mero y que muestre su ra�z cuadrada y su ra�z c�bica. PSeInt no tiene ninguna funci�n predefinida que permita calcular la ra�z c�bica, �C�mo se puede calcular?
//Entrada: El n�mero que el usuario introduzca, variable real.
//Salida: La ra�z cuadrada y c�bica del n�mero introducido, variable real.
//Dise�o:
//1.Pedirla al usuario que ingrese un n�mero y guardala en la variable 'num'.
//2.Obtener la ra�z cuadrada del n�mero mediante: raiz(num).
//3.Obtener la ra�z c�bica del n�mero mediante: (num)^1/3
Algoritmo Raiz_cuad_cub
	Definir num, cuad, cub Como Real
	Escribir "Ingresa un n�mero: "
	Leer num
	cuad = raiz(num)
	cub = (num)^(1/3)
	Escribir "La ra�z cuadrada de ",num " es ",cuad
	Escribir "La ra�z c�bica de ",num " es ",cub
FinAlgoritmo
