//Ejercicio 6 - Arreglos
//Problema: Crea un programa que pida un número al usuario un número de mes (por ejemplo, el 4) y diga cuántos días tiene (por ejemplo, 30) y el nombre del mes. Debes usar un vector. Para simplificarlo vamos a suponer que febrero tiene 28 días.
//Entrada: El número del mes que el usuario ingrese (variable entera).
//Salida: La cantidad de días según el mes que se haya ingresado (variable entera).
//Diseño:
// 1.Crear un vector llamado 'mes' que sea cadena y tenga una dimensión de 12.
// 2.Crear un vector llamado 'dias' que sea entero y tenga una dimensión de 12.
// 3.Definir el vector 'mes' según el dia que se elija por la variable n.
// 4.Hacer lo mismo con la variable 'dias'.
// 5.Pedirle al usuario que ingrese el número de mes que quiera.
// 6.Hacer una condicional, si n es menor a 1 o mayor a 12 escribir un mensaje de error, y si da solo mostrar el resultado.
// 7.Imprimir el mes según n con los días según n.
Algoritmo V_mes
	Definir n,dias Como Entero
	Definir mes como Cadena
	Dimension mes[12],dias[12]
	mes[1] = "Enero"
	mes[2] = "Febrero" 
	mes[3] = "Marzo" 
	mes[4] = "Abril" 
	mes[5] = "Mayo" 
	mes[6] = "Junio" 
	mes[7] = "Julio" 
	mes[8] = "Agosto" 
	mes[9] = "Septiembre" 
	mes[10] = "Octubre" 
	mes[11] = "Noviembre" 
	mes[12] = "Diciembre" 
	
	dias[1] = 31
	dias[2] = 28
	dias[3] = 31
	dias[4] = 30 
	dias[5] = 31 
	dias[6] = 30 
	dias[7] = 31 
	dias[8] = 31 
	dias[9] = 30 
	dias[10] = 31 
	dias[11] = 30 
	dias[12] = 31
	
	Imprimir Sin Saltar "Escribe el número del mes que desees (1-12): "
	Leer n
	
	Si n < 1 O n > 12 Entonces
		Imprimir "No se puede escribir ese número de mes"
	SiNo
		Imprimir mes[n]," tiene ",dias[n]," dias"
	FinSi
FinAlgoritmo
