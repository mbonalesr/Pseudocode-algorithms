// Ejercicio 8 - Funciones
// Problema: Crear una función recursiva que permita calcular el factorial de un número. Realiza un programa principal donde se lea un entero y se muestre el resultado del factorial.
// Entrada: El número entero ingresado por el usuario (variable entera).
// Salida: El número convertido a factorial (variable entera).
// Diseño:
// 1.Definir la función 'fact = factorial(n)', ponemos el 'fact' porque es la variable que almacenará el resultado y 'factorial (n)' es la función como tal.
// 2.Definimos 'fact' como entero ya que los factoriales no trabajan con decimales.
// 3.Hacemos una condición donde si n (que es nuestro número) es igual a '0' o '1', entonces la función tiene un valor de 1.
// 4.En el caso que no sea así entonces multiplicaremos 'n' por la función misma pero con un valor menor (función recursiva) y salimos de la función.
// 5.En el algoritmo principal definiremos 'num', 'res' como enteros y le pediremos al usuario que escriba el número que desee.
// 6.Leeremos 'num' y a la variable 'res' será donde obtendremos el factorial llamando a esa función.
// 7.Mostrar los resultados de 'res' con el 'num' ingresado.
Funcion fact = factorial(n)
	Definir fact Como Entero
	Si n = 0 O n = 1 Entonces
		fact = 1
	SiNo
		fact = n * factorial(n-1)
	FinSi
FinFuncion

Algoritmo Resultado_entero
	Definir num,res Como Entero
	Imprimir Sin Saltar "Escribe el número que sea: "
	Leer num
	res = factorial(num)
	Imprimir "El factorial de ",num," es: ",res
FinAlgoritmo