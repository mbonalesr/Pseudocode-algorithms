//Ejercicio 13 - Estructura secuencial
//Problema: Realizar un algoritmos que lea un número y que muestre su raíz cuadrada y su raíz cúbica. PSeInt no tiene ninguna función predefinida que permita calcular la raíz cúbica, ¿Cómo se puede calcular?
//Entrada: El número que el usuario introduzca, variable real.
//Salida: La raíz cuadrada y cúbica del número introducido, variable real.
//Diseño:
//1.Pedirla al usuario que ingrese un número y guardala en la variable 'num'.
//2.Obtener la raíz cuadrada del número mediante: raiz(num).
//3.Obtener la raíz cúbica del número mediante: (num)^1/3
Algoritmo Raiz_cuad_cub
	Definir num, cuad, cub Como Real
	Escribir "Ingresa un número: "
	Leer num
	cuad = raiz(num)
	cub = (num)^(1/3)
	Escribir "La raíz cuadrada de ",num " es ",cuad
	Escribir "La raíz cúbica de ",num " es ",cub
FinAlgoritmo
