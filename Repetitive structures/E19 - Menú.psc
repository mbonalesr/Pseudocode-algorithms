// Ejercicio 19 - Estructura repetitiva
// Problema: Realizar un ejemplo de menú, donde podemos escoger las distintas opciones hasta que seleccionamos la opción de "Salir".
// Entrada: La opción que se seleccione el usuario (variable de caracteres).
// Salida: El mensaje según la opción del usuario (variable de caracteres).
// Diseño:
// 1.Hacer un repetir hasta que la opcion sea salir.
// 2.Dentro del loop, mostrar el menú de un restaurante.
// 3.Si la opcion es pastas, mostrarlas
// 4.Si la opcion son pizzas, mostrarlas
// 5.Si la opción son bebidas, mostrarlas.
// 6.Si la opción es salir, dejarle un mensaje de despedida.
Algoritmo Menú
	Definir option Como Entero
	Repetir
		Limpiar Pantalla
		Imprimir "Bienvenido a Paolettos, por favor, seleccione una opción"
		Imprimir "1 - Pastas"
		Imprimir "2 - Pizzas"
		Imprimir "3 - Bebidas"
		Imprimir "4 - Salir"
		Leer option
		Segun option Hacer
			1:Imprimir "Spaguetti a la boloñesa: $250"
				Imprimir "Calzone tradicional: $270"
	
			2: Imprimir "Pizza margarita: $350"
				Imprimir "Pizza gustosa: $370"
				Imprimir "Pizza patatosa: $370"
	
			3:Imprimir "Agua: $25"
				Imprimir "Refresco $35"
				Imprimir "Cerveza: $45"

			4: Imprimir "Excelente, que tenga buen día!"
				
			De Otro Modo:
				Imprimir "Opción inválida"
		FinSegun
	Hasta Que option = 4
FinAlgoritmo
