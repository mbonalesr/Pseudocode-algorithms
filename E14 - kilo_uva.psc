//Ejercicio 14 - Estructura condicional
//Problema: La asociación de vinicultores tiene como política fijar un precio inicial al kilo de uva, la cual se clasifica en tipos A y B, y además en tamaños 1 y 2. Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se requiere determinar cuánto recibirá un productor por la uva que entrega en un embarque, considerando lo siguiente: si es de tipo A, se le cargan 20 céntimos al precio inicial cuando es de tamaño 1; y 30 céntimos si es de tamaño 2. Si es de tipo B, se rebajan 30 céntimos cuando es de tamaño 1, y 50 céntimos cuando es de tamaño 2. Realice un algoritmo para determinar la ganancia obtenida.
//Entrada: Que el usuario selecciones el tipo (variable de caracteres) y el tamaño (variable entera) así como el precio inicial (variable real).
//Salida: El precio final haciendo ya los ajustes (variable real).
//Diseño:
//1.Pedirle al usuario el precio inicial del kilo de uva.
//2.Pedirle al usuario que escriba el tipo.
//3.Pedirle al usuario que escriba el tamaño.
//4.Evaluar si tipo = A Y tam = 1 entonces precio_f = precio + 0.2
//5.Si no, precio_f = precio + 0.3
//6.Evaluar si tipo = B y tam = 1 entonces precio_f = precio - 0.2
//7.Si no, precio_f = precio - 0.5
//Mostrar el precio final con el ajuste.
Algoritmo Kilo_uva
	Definir precio_i,precio_f Como Real
	Definir tipo Como Caracter
	Definir tam Como Entero
	Imprimir "Dime el precio inicial del kilo de uva: "
	Leer precio_i
	Imprimir "Ahora el tipo: "
	Leer tipo
	Imprimir "Finalmente, su tamaño:"
	Leer tam
	
	Si tam < 1 O tam > 2 Entonces
		Imprimir "Tamaño inválido"
	SiNo
		Si tipo = A Entonces
			precio_f = precio_i + 0.2
		SiNo
			precio_f = precio_i + 0.3
		FinSi
		
		Si tipo = B Entonces
			precio_f = precio_i - 0.2
		SiNo
			precio_f = precio_i - 0.5
		FinSi
		
		Imprimir "El precio final queda como: $", precio_f
	FinSi

FinAlgoritmo
