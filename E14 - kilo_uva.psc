//Ejercicio 14 - Estructura condicional
//Problema: La asociaci�n de vinicultores tiene como pol�tica fijar un precio inicial al kilo de uva, la cual se clasifica en tipos A y B, y adem�s en tama�os 1 y 2. Cuando se realiza la venta del producto, �sta es de un solo tipo y tama�o, se requiere determinar cu�nto recibir� un productor por la uva que entrega en un embarque, considerando lo siguiente: si es de tipo A, se le cargan 20 c�ntimos al precio inicial cuando es de tama�o 1; y 30 c�ntimos si es de tama�o 2. Si es de tipo B, se rebajan 30 c�ntimos cuando es de tama�o 1, y 50 c�ntimos cuando es de tama�o 2. Realice un algoritmo para determinar la ganancia obtenida.
//Entrada: Que el usuario selecciones el tipo (variable de caracteres) y el tama�o (variable entera) as� como el precio inicial (variable real).
//Salida: El precio final haciendo ya los ajustes (variable real).
//Dise�o:
//1.Pedirle al usuario el precio inicial del kilo de uva.
//2.Pedirle al usuario que escriba el tipo.
//3.Pedirle al usuario que escriba el tama�o.
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
	Imprimir "Finalmente, su tama�o:"
	Leer tam
	
	Si tam < 1 O tam > 2 Entonces
		Imprimir "Tama�o inv�lido"
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
