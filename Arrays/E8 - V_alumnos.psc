//Ejercicio 8 - Arreglos
//Problema: Queremos guardar los nombres y la edades de los alumnos de un curso. Realiza un programa que introduzca el nombre y la edad de cada alumno. El proceso de lectura de datos terminará cuando se introduzca como nombre un asterisco (*) Al finalizar se mostrará los siguientes datos:
//- Todos lo alumnos mayores de edad.
//- Los alumnos mayores (los que tienen más edad)
//Entrada: Los nombres y edades de los alumnos (variable de cadena y entera).
//Salida: 
//Diseño:
// 1.Hacer dos vectores, uno de nombres y otro de edades de dimensión 20.
// 2.Iniciar i en 1 (que será el contador donde se guarde el iterador).
// 3.Pedirle al usuario que escriba que alumno es y leer su nombre.
// 4.Hacer un mientras donde el nombre no sea '*'.
// 5.Pedirle su edad y aumentar el contador i = i + 1, volver a pedir el nombre para que se vuelva a evaluar la condición.
// 6.Salir del mientras y hacer un para que muestre a los alumnnos mayores de edad, que vaya de 1 al penúltimo dado que el último es '*'.
// 7.Dentro del primer para, comparar las edades para ver si son mayores de edad y flitrarlos, si si, imprimirlos.
// 8.Iniciar la variable 'max_edad' igual a la primera edad.
// 9.Hacer un segundo para, que vaya de 2 dado que se la posición ya se uso para la edad maxima hasta la penultima iteración, aqui comparamos si la edad es mayor que el maximo, si si, ahora el maximo toma el valor de esa edad.
// 10.Salimos de ese para y hacemos el último para, que vaya de la primera posición hasta la penúltima donde si la edad es igual al maximo, se muestre con su nombre y la edad.
//Variables de control: 
//i = Usado para contar cuántos alumnos se cargaron.
//j = Usado para recorrer y filtrar mayores de edad.
//k = Usado para buscar el máximo.
//l = Usado para listar a los que tienen la edad máxima.
Algoritmo V_alumnos
	Definir nombres como Cadena
	Definir edades,i,max_edad Como Entero
	Dimension nombres[20],edades[20]
	i = 1
	Imprimir Sin Saltar "Dime que alumno eres: "
	Leer nombres[i]
	Mientras nombres[i] <> "*" Hacer
		Imprimir Sin Saltar "Ahora ",nombres[i],", dime tu edad: "
		Leer edades[i]
		i = i + 1
		Imprimir Sin Saltar "Dime que alumno eres: "
		Leer nombres[i]
	FinMientras
	
	Imprimir "Alumnos mayores de edad:"
	Para j = 1 Hasta i-1 Hacer
		Si edades[j] >= 18 Entonces
			Imprimir "- ",nombres[j],": ",edades[j]," años"
		FinSi
	FinPara
	
	max_edad = edades[1]
	Imprimir "Alumnos mayores (los que tienen más edad)"
	Para k = 2 Hasta i-1 Hacer
		Si edades[k] > max_edad Entonces
			max_edad = edades[k]
		FinSi
	FinPara
	
	Para l = 1 Hasta i-1 Hacer
		Si edades[l] = max_edad Entonces
			Imprimir nombres[l]," (",edades[l]," años)"
		FinSi
	FinPara
FinAlgoritmo