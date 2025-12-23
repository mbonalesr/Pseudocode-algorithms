// Ejercicio 2 - Funciones
// Problema: Crea un programa que pida dos número enteros al usuario y diga si alguno de ellos es múltiplo del otro. Crea una función EsMultiplo que reciba los dos números, y devuelve si el primero es múltiplo del segundo.
//Entrada: El número 1 y número 2 que el usuario ingrese (variables enteras).
//Salida: El mensaje si el primer número es múltiplo del segundo (variable de cadena).
//Diseño:
// 1.Hacer la función 'EsMultiplo' con los argumentos 'num1', 'num2'.
// 2.Dentro de ella, dividir num1 % num2 y si da 0 significa que son múltiplos, si no, obviamente no serian múltiplos.
// 3.Salir de la función  y dentro del algortimo pedirle al usuario que teclee 'numero1' y 'numero2'.
// 4.Llamar a la función y darle los argumentos de 'numero1' y 'numero2'.
Funcion EsMultiplo(num1,num2)
	Si num1 % num2 = 0 Entonces
		Imprimir num1," es múltiplo de ",num2
	SiNo
		Imprimir num1," no es múltiplo de ",num2
	FinSi
FinFuncion

Algoritmo Comparac
	Definir numero1,numero2 Como Entero
	Imprimir Sin Saltar "Escribe el número que quieras: "
	Leer numero1
	Imprimir Sin Saltar "Escribe otro número que quieras: "
	Leer numero2
	EsMultiplo(numero1,numero2)
FinAlgoritmo
