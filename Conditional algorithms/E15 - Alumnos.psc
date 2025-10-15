//Ejercicio 15 - Estructura condicional
//Problema: El director de una escuela est� organizando un viaje de estudios, y requiere determinar cu�nto debe cobrar a cada alumno y cu�nto debe pagar a la compa��a de viajes por el servicio. La forma de cobrar es la siguiente: si son 100 alumnos o m�s, el costo por cada alumno es de 65 euros; de 50 a 99 alumnos, el costo es de 70 euros, de 30 a 49, de 95 euros, y si son menos de 30, el costo de la renta del autob�s es de 4000 euros, sin importar el n�mero de alumnos. Realice un algoritmo que permita determinar el pago a la compa��a de autobuses y lo que debe pagar cada alumno por el viaje.
//Entrada: La cantidad de alumnos que va al viaje, variable entera.
//Salida: La cantidad a pagar por alumno seg�n el total, variable real.
//Dise�o:
//1.Preguntarle al usuario la cantidad de alumnos.
//2.Si alum < 30, costo = 4000/alum, imprimir 'costo'
//3.Si no, Si alum >= 30 Y alum < 49, costo es igual a 95 euros.
//4.Si no, Si alum >= 70 Y alum < 99, costo es igual a 70 euros.
//5.Si no, Si alum >= 100, costo es igual a 65 euros.
Algoritmo Alumnos
	Definir alum Como Entero
	Definir costo Como Real
	Imprimir "Cu�ntos alumnos viajar�n? "
	Leer alum
	
	Si alum < 30 Entonces
		costo = 4000/alum
		Imprimir "El costo por alumno del viaje es ",costo," euros."
	SiNo
		Si alum >= 30 Y alum <= 49 Entonces
			costo = 95
			Imprimir "El costo por alumno del viaje es ",costo," euros."
		SiNo
			Si alum >= 50 Y alum <= 99 Entonces
				costo = 70
				Imprimir "El costo por alumno del viaje es ",costo," euros."
			SiNo
				Si alum >= 100 Entonces
					costo = 65
					Imprimir "El costo por alumno del viaje es ",costo," euros."
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
