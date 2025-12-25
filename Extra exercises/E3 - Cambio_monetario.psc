// Ejercicio 3 - Ejercicios extra
// Problema: Realizar una aplicación que recoja por teclado la cantidad total a pagar y la cantidad que se ha entregado. La aplicación debe calcular el cambio correspondiente con el menor número de monedas y/o billetes posibles.
//Entrada: La cantidad total que se tiene que pagar (variable entera).
//Salida: La cantidad de billetes o monedas en las que se pueda distribuir ese cambio (variable entera).
//Diseño:
// 1.Crear el vector 'denominaciones' con 9 valores.
// 2.Pedirle al usuario que ingrese la cantidad 'total' a pagar y leerla.
// 3.Hacer un repetir hasta que con la finalidad de que si lo pagado es menor al total, que de un mensaje de error y se repita porque en esta aplicación se pedirá cambio.
// 4.Calcular el cambio restandole 'total' a 'pagado'.
// 5.Designar las denominaciones para el cambio del vector que creamos, empezamos con $500 y bajamos hasta $1.
// 6.Crear un para de 1 hasta 9 (que son las cantidades de las denominaciones) para ir calculando el cambio de cada cantidad.
// 7.Dentro del para, calcular la cantidad mediante el trunco de la división del cambio entre la denominación correspodiente, es trunco porque no existen billetes o monedas a medias.
// 8.Después con 'cambio' calculamos el cambio sobrante dividiendo el cambio entre la denominación correspondiente, reduce el cambio con la denominación actual.
// 9.Agregamos una condición donde si la 'cantidad' calculada es mayor a 0, que se muestre con su denominación.
// 10.Finalmente, agregar un mensaje de que el cambio ha sido entregado correctamente.
Algoritmo Cambio_monetario
	Definir total,cambio,cantidad,pagado,denominaciones Como Entero
	Dimension denominaciones[9]
	Imprimir Sin Saltar "Escribe la cantidad total a pagar: $"
	Leer total
	
	Repetir
		Imprimir Sin Saltar "Ahora la cantidad ya pagada: $"
		Leer pagado
		Si pagado < total Entonces
			Imprimir "Falta dinero para pagar el total"
		FinSi
	Hasta Que pagado >= total 
	
	cambio = pagado - total
	
	denominaciones[1] = 500
	denominaciones[2] = 200
	denominaciones[3] = 100
	denominaciones[4] = 50
	denominaciones[5] = 20
	denominaciones[6] = 10
	denominaciones[7] = 5
	denominaciones[8] = 2
	denominaciones[9] = 1
	
	Para i = 1 Hasta 9 Hacer
		cantidad = trunc(cambio / denominaciones[i])
		cambio = cambio % denominaciones[i]
		
		Si cantidad > 0 Entonces
			Imprimir cantidad," billetes/monedas de $",denominaciones[i]
		FinSi
	FinPara
	Imprimir "Cambio entregado correctamente"
FinAlgoritmo
