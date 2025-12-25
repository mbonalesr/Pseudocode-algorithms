// Ejercicio 4 - Ejercicios extra
// Problema: Realizar un algoritmo que permita descomponer un número en sus factores primos.
//Entrada: El número entero que el usuario ingrese (variable entera).
//Salida: Los factores o números primo que contenga (variable de cadena).
//Diseño:
// 1.Crear el vector 'primos' con un tamaño de 7.
// 2.Definir los valores de 'primos', el primero es '2' y el segundo es '3', del tercero en adelante aumenta de 2 en 2, desde '5' hasta '17'.
// 3.Definir 'i' como el contador e iniciarlo en 1, este nos servirá para direccionar el vector e ir avanzando en el.
// 4.Pedirle el 'num' que desee el usuario y leer la variable (entera).
// 5.Crear una condición en que si el número ingresado es 1, mande un mensaje de error.
// 6.En el caso de que sea falso, crear un mientras donde la condicíon es que el número no sea 1, dentro de el dividir por el módulo 'num' entre 'primos[i]' y guardarla en 'div', según el resultado de la división crear otra condición. 
// 7.Si la división da igual a 0, imprimir el número del vector 'primos[i]' porque significa que es un factor primo de ese número e cambiar el 'num' y dividirlo entre el 'primos[i]' porque así obtendremos el valor que se mostrará. 
// 8.En el caso que el módulo no sea 0, avanzaremos i en 1.
// 9.Se repite el proceso y salimos del programa.
Algoritmo Fac_primos
	Definir num,primos,div,i Como Entero
	Dimension primos[7]
	primos[1] = 2
	primos[2] = 3
	primos[3] = 5
	primos[4] = 7
	primos[5] = 11
	primos[6] = 13
	primos[7] = 17
	i = 1
	
	Imprimir Sin Saltar "Escribe el número que desees: "
	Leer num
	
	Si num = 1 Entonces
		Imprimir "No se puede reducir a factores al 1"
	SiNo
		Imprimir "Número(s) primo encontrados: "
		Mientras num > 1 Hacer
			div = num % primos[i]
			Si div = 0 Entonces
				Imprimir primos[i]
				num = num / primos[i]
			SiNo
				i = i + 1
			FinSi
		FinMientras
	FinSi
	
FinAlgoritmo
