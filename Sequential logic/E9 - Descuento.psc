//Ejercicio 9 - Estructura secuencial
//Problema: Una tienda ofrece un descuento del 15% sobre el total de la compra y un cliente desea saber cuanto deberá pagar finalmente por su compra.
//Entrada: Total de la compra (Variable real)
//Salida: Total de la compra más el 15% de descuento (Variable real)
//Diseño
//1.Ingresar el total de compra
//2.Multiplicar el total por 0.15 para obtener el descuento
//3.Descontar el descuento al total
//4.Mostrar el resultado
Algoritmo Descuento
	Definir total, desc, total_desc Como Real
	Escribir "Enseñame el total de tu compra: "
	Leer total
	desc = total * 0.15
	total_desc = total - desc
	Escribir "Con el descuento del 15%, el total a pagar es de: $",total_desc
FinAlgoritmo
