//Ejercicio 14 - Arreglos
//Problema: Crear un programa que lea los precios de 5 artículos y las cantidades vendidas por una empresa en sus 4 sucursales. Informar:
// -Las cantidades totales de cada articulo.
// -La cantidad de artículos en la sucursal 2.
// -La cantidad del articulo 3 en la sucursal 1.
// -La recaudación total de cada sucursal.
// -La recaudación total de la empresa.
// -La sucursal de mayor recaudación.
//Entrada: Los precios de 5 artículos y las ventas de las 4 sucursales de 5 artículos (variable reales).
//Salida: Las cantidades totales de cada articulo, cantidad de artículos en la sucursal 2, cantidad del articulo 3 en la sucursal 1(variables reales y la última entera).
//Diseño:
// 1.Crear el vector 'precios', con dimension de 5.
// 2.Pedirle al usuario el precio de los 5 productos mediante un para, que vaya de 1 a 5, leer la variable 'precios' y que se vayan guardando en el vector.
// 3.Crear la tabla 'ventas', con dimensiones de 4x5.
// 4.Haremos un para anidado que vaya de 1 a 4 y de 1 a 5, aquí pediremos los 5 artículso de las 4 sucursales.
// 5.Después queremos obtener las cantidades totales por artículo, empezaremos el para anidado de 1 a 5 y dentro de el iniciaremos la variable 'totales', después haremos un para de 1 a 4 y dentro de este último para sumaremos las ventas con los totales, saliendo del primer para imprimiremos los totales de cada sucursal.
// 6.Para obtener el total de artículos de la sucursal 2, el primer para irá de 2 a 2 ya que solo nos interesa que recorra la sucursal 2, de nuevo se reinicia la variable 'totales' y en el segundo para de 1 a 5 sumaremos la variable 'totales' y saliendo del primer para mostraremos el resultado.
// 7.Ahora queremos obtener la cantidad de artículos 3 en la sucursal 1, ajustaremos el primer para de 1 a 1 (iniciando 'totales' antes de entrar al segundo)y el segundo de 3 a 3, dentro de el sumaremos totales con la posicion 1,3 de ventas.
// 8.Vamos a obtener la recaudación total, antes del loop iniciaremos la variable 'tot_e' a 0, hacemos un para de 1 a 4 y otro de 1 a 5 (iniciando 'totales' antes de entrar al segundo)), dentro de el sumaremos con totales con el resultado de las ventas con el precio correspondiente, saliendo del primer para sumaremos tot_e con totales, se hizo un vector llamado 'recd' que se igualará a totales y  primero se mostrará lo total recaudado por sucursal y finalmente lo total de las 4 sucursales.
// 9.Para indicar la sucursal con mayor recaudación, igualaremos la variable 'mayore' al primer valor de recd y la variable 'pos' igual a 1, haremos el para de 2 a 4 donde si una variable de recd es mayor que mayore, mayorese igualará a ese valor y simplemente la posición a i, de ahí solo mostramos la sucursal con la mayor recaudación con las variables 'pos' y 'mayore'.
Algoritmo VT_precios
	Definir precio,totales,tot_e,recd,mayore,pos Como Real
	Definir ventas Como Entero
	Dimension precio[5],ventas[4,5],recd[4]
	
	//Pedir los precios
	Para j = 1 Hasta 5 Hacer
		Imprimir Sin Saltar "Dime el precio ",j,":"
		Leer precio[j]
	FinPara
	
	//Pedir las cantidades vendidas
	Para i = 1 Hasta 4 Hacer
		Para j = 1 Hasta 5 Hacer
			Imprimir Sin Saltar "Cuántos artículos ",j," de la sucursal ",i," se vendieron? "
			Leer ventas[i,j]
		FinPara
	FinPara
	
	//Cantidades totales por artículo
	Para j = 1 Hasta 5 Hacer
		totales = 0
		Para i = 1 Hasta 4 Hacer
			totales = totales + ventas[i,j]
		FinPara
		Imprimir "Total de cantidades vendidas del artículo ",j,": ",totales," productos"
	FinPara
	
	//Cantidad de artículos en sucursal 2
	Para i = 2 Hasta 2 Hacer
		totales = 0
		Para j = 1 Hasta 5 Hacer
			totales = totales + ventas[i,j]
		FinPara
		Imprimir "Cantidad de productos recaudados en sucursal ",i,": ",totales," artículos"
	FinPara
	
	//Cantidad de artículos 3 en sucursal 1
	Para i = 1 Hasta 1 Hacer
		totales = 0
		Para j = 3 Hasta 3 Hacer
			totales = totales + ventas[1,3]
		FinPara
		Imprimir "Cantidad de articulos 3 en sucursal 1: ",totales," artículos"
	FinPara
	
	//Recaudación total en cada sucursal y en total por la empresa
	tot_e = 0
	Para i = 1 Hasta 4 Hacer
		totales = 0
		Para j = 1 Hasta 5 Hacer
			totales = totales + (ventas[i,j] * precio[j])
		FinPara
		tot_e = totales + tot_e
		recd[i] = totales
		Imprimir "Cantidad total recaudada en la sucursal ",i,": $",totales," pesos"
	FinPara
	Imprimir "Total recaudado por la empresa: $",tot_e," pesos"
	
	//Indicar la sucursal de mayor recaudación
	mayore = recd[1]
	pos = 1
	Para i = 2 Hasta 4 Hacer
		Si recd[i] > mayore Entonces
			mayore = recd[i]
			pos = i
		FinSi
	FinPara
	Imprimir "La sucursal con mayor recaudación fue la ",pos," con $",mayore," pesos"
FinAlgoritmo
