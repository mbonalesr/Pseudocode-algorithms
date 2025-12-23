// Ejercicio 9 - Funciones
// Problema: Crear una función que calcule el MCD de dos número por el método de Euclides. El método de Euclides es el siguiente:
// - Se divide el número mayor entre el menor.
// - Si la división es exacta, el divisor es el MCD.
// - Si la división no es exacta, dividimos el divisor entre el resto obtenido y se continúa de esta forma hasta obtener una división exacta, siendo el último divisor el MCD.
//Crea un programa principal que lea dos números enteros y muestre el MCD.
// Entrada: Los dos números enteros que el usuario ingrese (variables enteras).
// Salida: El número Máximo Común Divisor (MCD) que nos arroje la función (variable entera).
// Diseño: 
// 1.Declarar la función 'euclides' que tendra los argumentos 'n1' y 'n2'.
// 2.Agregaremos las variables 'og_n1' y 'og_n2' que tendrán los primeros valores de 'n1' y 'n2', esto debido a fines prácticos para la impresión final.
// 3.Ponemos una condición en que si el segundo valor es mayor al primero, mostrar el mensaje que diga que no se puede realizar la división.
// 4.Si no es así, entonces divideremos el primer valor con el segundo pero usando el módulo, y si nos da 0, su mcd será resultado de la división regular de ambos.
// 5.De no ser así, haremos un repetir hasta que la variable de 'n2' sea igual a 0.
// 6.Dentro del repetir hasta que, dividir por el módulo 'n1' entre 'n2' y guardarlo en 'residuo'.
// 7.Guardar 'n2' en 'n1' (esto es para la segunda iteración).
// 8.Y finalmente guardar 'residuo' en 'n2'.
// 9.Salimos del repetir hasta que, aqui asignaremos 'n1' final a 'mcd'.
// 10.Imprimiremos los valores originales de 'n1' y 'n2', así como el valor de 'mcd' sin importar los casos.
// 11.Ahora para el algoritmo, definimos 'num1' y 'num2' como enteros (ya que el MCD no trabaja con decimales).
// 12.Le pedimos al usuario que escriba los valores para 'num1' y 'num2' y los leemos.
// 13.Llamamos a la función 'euclides' y usamos como argumentos a 'num1' y num2'.
Funcion euclides(n1,n2)
	og_n1 = n1
	og_n2 = n2
	Si n2 > n1 Entonces
		Imprimir "No se puede hacer la división"
	SiNo
		Si n1 % n2 = 0 Entonces
			mcd = n1 / n2 
		SiNo
			Repetir
				residuo = n1 % n2
				n1 = n2
				n2 = residuo
			Hasta Que n2 = 0
			mcd = n1
		FinSi
	FinSi
	Imprimir "El MCD de ",og_n1," y de ",og_n2," es: ",mcd
FinFuncion

Algoritmo Pedir_nums
	Definir num1,num2 Como Entero
	Imprimir Sin Saltar "Escribe un número (entero) que sea: "
	Leer num1
	Imprimir Sin Saltar "Escribe otro número (entero) que sea: "
	Leer num2
	euclides(num1,num2)
FinAlgoritmo