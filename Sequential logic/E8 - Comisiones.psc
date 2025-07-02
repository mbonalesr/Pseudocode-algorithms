//Ejercicio 8 - Estructura secuencial
//Problema: Un vendedor recibe un sueldo base mas un 10% extra por comisión de sus ventas, el vendedor desea saber cuanto dinero obtendrá por concepto de comisiones por las tres ventas que realiza en el mes y el total que recibirá en el mes tomando en cuenta su sueldo base y comisiones.
//Entrada: Sueldo, las tres ventas como variable real.
//Salida: Las comisiones y su suma con el sueldo.
//Diseño:
//1.Pedir el valor de las tres ventas y su sueldo.
//2. Calcular la comisión de cada venta multiplicandolo por 0.1 y sumando todo al final.
//3. Sumar ese valor con el total del sueldo
//4. Mostrar resultados
Algoritmo Comisiones
	Definir venta1, venta2, venta3, sueldo, sueldo_tot, comision Como Real
	Escribir "Escribe tu sueldo base: "
	Leer sueldo
	Escribir "Dime el valor de la primera venta: "
	Leer venta1
	Escribir "Dime el valor de la segunda venta: "
	Leer venta2
	Escribir "Dime el valor de la tercera venta: "
	Leer venta3
	comision = (venta1*0.1) + (venta2*0.1) + (venta3*0.1)
	sueldo_tot = sueldo + comision
	Escribir "Este mes tus ingresos totales serán de: $",sueldo_tot
FinAlgoritmo
