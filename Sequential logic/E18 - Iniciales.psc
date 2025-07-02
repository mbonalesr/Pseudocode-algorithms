//Ejercicio 18 - Estructura secuencial
//Problema: Pedir el nombre y los dos apellidos de una persona y mostrar las iniciales.
//Entrada: Pedir el nombre y los dos apellidos, variable cadena.
//Salida: Las iniciales del nombre con los apellidos.
//Diseño:
//1.Dejar que el usuario agregue su nombre y lo guarde en una variable denominada 'nomb'.
//2.Dejar que el usuario agregue su primer apellido y lo guarde en una variable denominada 'ap_p'.
//3.Dejar que el usuario agregue su segundo apellido y lo guarde en una variable denominada 'ap_m'.
//4.Extraer de las tres variables el primer caracter y juntarlo en una nueva variable denominada 'inic'.
//5.Mostrar resultados.
Algoritmo Iniciales
	Definir nomb,ap_p,ap_m Como Caracter
	Escribir "Escribe tu nombre: "
	Leer nomb
	Escribir "Escribe tu apellido paterno: "
	Leer ap_p
	Escribir "Escribe tu apellido materno: "
	Leer ap_m
	inic = Mayusculas(Subcadena(nomb,0,1) + Subcadena(ap_p,0,1) + Subcadena(ap_m,0,1))
	Escribir inic
FinAlgoritmo
