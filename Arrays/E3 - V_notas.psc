//Ejercicio 3 - Arreglos
//Problema: Se quiere realizar un programa que lea por teclado las 5 notas obtenidas por un alumno (comprendidas entre 0 y 10). A continuación debe mostrar todas las notas, la nota media, la nota más alta que ha sacado y la menor.
//Entrada: Las 5 notas que el alumno ingrese (variable real).
//Salida: Las 5 notas ingresadas, el promedio, la nota más alta y la menor (variables reales).
//Diseño:
// 1.Definir el vector 'notas' como real, su dimensión es de 5.
// 2.Inicializar la variable suma igual a 0.
// 3.Hacer un para de 1 a 5 metiendo un repetir hasta que (con la finalidad de que el usuario solo pueda meter notas del 0 al 10).
// 4.Según el valor de i se le agregarán que calificaciones esta escribiendo el usuario.
// 5.Pedirle al usuario que ingrese la i nota y leerla
// 6.Salir del primer para.
// 7.Iniciar 'mas' y 'menos' en la primera nota.
// 8.Hacer otro para de 1 a 5 para sumar, ver cual es la mayor y menor, de las 5 notas que se escribieron en el otro para.
// 9.Sumar cada nota, ver si menos era mayor que la nota y si si, pasarla a menos y lo mismo pero al inverso con mas.
// 10.Mostrar la media, nota más y menos alta, así como las 5 notas introducidads.
Algoritmo V_notas
	Definir nota,suma,media,mas,menos Como Real
	Dimension nota[5]
	suma = 0
	
	Para i = 1 Hasta 5 Hacer
		Repetir
			Segun i Hacer
				1: Imprimir Sin Saltar "Escribe la primera calificación: "
				2: Imprimir Sin Saltar "Ahora la segunda calificación: "
				3: Imprimir Sin Saltar "Sigue la tercera calificación: "
				4: Imprimir Sin Saltar "Sigue la cuarta calificación: "
				5: Imprimir Sin Saltar "Finalmente la quinta calificación: "
			FinSegun
			Leer nota[i]
			Si nota[i] < 0 O nota[i] > 10 Entonces
				Imprimir "Nota inválida"
			FinSi
		Hasta Que nota[i] >= 0 Y nota[i] <= 10
	FinPara
	
	mas = nota[1]
	menos = nota[1]
	
	Para i = 1 Hasta 5 Hacer
		suma = suma + nota[i]
		Imprimir "Nota [",i,"]: ",nota[i]
		Si menos > nota[i] Entonces
			menos = nota[i]
		FinSi
		
		Si mas < nota[i] Entonces
			mas = nota[i]
		FinSi
	FinPara
	
	media = suma / 5
	Imprimir "La media de notas es de: ",media
	Imprimir "La nota más alta es: ",mas
	Imprimir "La nota más baja es: ",menos
	
	FinAlgoritmo
