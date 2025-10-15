// Ejercicio 12 - Estructura repetitiva
// Problema: Realizar un algoritmo para determinar cuánto ahorrará una persona en un año, si al final de cada mes deposita cantidades variables de dinero; además, se quiere saber cuánto lleva ahorrado cada mes.
// Entrada: La cantidad de dinero depositada al mes (variable real).
// Salida: La cantidad acumulada mes con mes y la total al finalizar los 12 meses (variable real).
// Diseño:
// 1.Inicializar mes a 1, acum = 0
// 2.Hacer un repetir hasta que mes = 12
// 3.Dentro del repetir, pedirle al usuario que ingrese su ahorro mensual y guardarla en acum, acum = deposito + acum
// 4.También ir subiendo mes con mes, mes = mes + 1
Algoritmo Ahorro
	Definir mes Como Entero
	definir acum,deposito Como Real
	mes = 1
	deposito = 0
	acum = 0
	Repetir
		Imprimir Sin Saltar "Cuánto abonaras este mes ",mes," ?"
		Leer deposito
		acum = acum + deposito
		mes = mes + 1
		Imprimir "Llevas ahorrado hasta ahora: $",acum," pesos"
	Hasta Que mes >= 13
FinAlgoritmo
