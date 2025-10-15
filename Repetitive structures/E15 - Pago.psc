// Ejercicio 15 - Estructura repetitiva
// Problema: Una persona adquiri� un producto para pagar en 20 meses. El primer mes pag� 10 euros, el segundo 20 euros, el tercero 40 euros y as� sucesivamente. Realizar un algoritmo para determinar cu�nto debe pagar mensualmente y el total de lo que pag� despu�s de los 20 meses.
// Entrada: Los pagos de 10,20,40 euros (variable entera).
// Salida: El total que pago la persona al pagar despu�s de los 20 meses (variable entera).
// Dise�o
// 1.Inicializar variables suma = 0 y meses = 20
// 2.Ingresar el pago inicial de 10 euros, aunque se puede adaptar a cualquier n�mero.
// 3.Hacer un para que vaya de 1 a 20.
// 4.Dentro del para, suma = pago * 2 + suma
// 5.Mostrar cada mes el ingreso.
// 6.Afuera del para, mostrar el total pagado de los 20 meses
Algoritmo Pago
	Definir meses Como Entero
	Definir pagar,suma Como Real
	suma = 0
	meses = 20
	pagar = 10
	Para i = 1 Hasta meses Hacer
		suma = pagar + suma
		Imprimir "Mes ",i," : Debes pagar ",pagar," pesos"
		pagar = pagar * 2
	FinPara
	Imprimir "El total que pagaste estos 20 meses fue de $",suma," pesos"
FinAlgoritmo