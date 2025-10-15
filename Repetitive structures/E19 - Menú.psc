// Ejercicio 19 - Estructura repetitiva
// Problema: Realizar un ejemplo de men�, donde podemos escoger las distintas opciones hasta que seleccionamos la opci�n de "Salir".
// Entrada: La opci�n que se seleccione el usuario (variable de caracteres).
// Salida: El mensaje seg�n la opci�n del usuario (variable de caracteres).
// Dise�o:
// 1.Hacer un repetir hasta que la opcion sea salir.
// 2.Dentro del loop, mostrar el men� de un restaurante.
// 3.Si la opcion es pastas, mostrarlas
// 4.Si la opcion son pizzas, mostrarlas
// 5.Si la opci�n son bebidas, mostrarlas.
// 6.Si la opci�n es salir, dejarle un mensaje de despedida.
Algoritmo Men�
	Definir option Como Entero
	Repetir
		Limpiar Pantalla
		Imprimir "Bienvenido a Paolettos, por favor, seleccione una opci�n"
		Imprimir "1 - Pastas"
		Imprimir "2 - Pizzas"
		Imprimir "3 - Bebidas"
		Imprimir "4 - Salir"
		Leer option
		Segun option Hacer
			1:Imprimir "Spaguetti a la bolo�esa: $250"
				Imprimir "Calzone tradicional: $270"
	
			2: Imprimir "Pizza margarita: $350"
				Imprimir "Pizza gustosa: $370"
				Imprimir "Pizza patatosa: $370"
	
			3:Imprimir "Agua: $25"
				Imprimir "Refresco $35"
				Imprimir "Cerveza: $45"

			4: Imprimir "Excelente, que tenga buen d�a!"
				
			De Otro Modo:
				Imprimir "Opci�n inv�lida"
		FinSegun
	Hasta Que option = 4
FinAlgoritmo
