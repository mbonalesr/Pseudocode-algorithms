//Ejercicio 20 - Estructura condicional
//Problema: Una compañía de transporte internacional tiene servicio en algunos países de América del Norte, América Central, América del Sur, Europa y Asia. El costo por el servicio de transporte se basa en el peso del paquete y la zona a la que va dirigido. Parte de su política implica que los paquetes con un peso superior a 5 kg no son transportados, esto por cuestiones de logística y de seguridad. Realice un algoritmo para determinar el cobro por la entrega de un paquete o, en su caso, el rechazo de la entrega. 
//Entrada: Los gramos para transportar (variable real) y la zona en que se quiere mandar (variable entera).
//Salida: Total a pagar por la entrega (variable real).
//Diseño:
//1.Pedirle al usuario el peso a transportar.
//2.Pedirle al usuario a la zona en que lo va a mandar.
//3.Si peso > 5000, imprimir "El paquete no puede ser transportado, por seguridad y logística."
//4.Si no, segun zona hacer:
//4.1 - 1: imprimir "América del Norte", entrega = peso * 24
//4.2 - 2: imprimir "América Central", entrega = peso * 20
//4.3 - 3: imprimir "América del Sur", entrega = peso * 21
//4.4 - 4: imprimir "Europa", entrega = peso * 10
//4.5 - 5: imprimir "Asia", entrega = peso * 18
Algoritmo Transporte
	Definir peso,entrega Como Real
	Definir zona Como Entero
	Imprimir "Escribe el peso del paquete a enviar (en gramos)"
	Leer peso
	Si peso > 5000 Entonces
		Imprimir "El paquete no puede ser transportado, por seguridad y logística."
	SiNo
		Imprimir "Ahora escribe la zona en que lo quieres transportar: "
		Leer zona
		Segun zona Hacer
			1:Imprimir "América del Norte" 
				entrega = peso * 24
			2:Imprimir "América Central"
				entrega = peso * 20
			3:Imprimir "América del Sur"
				entrega = peso * 21
			4:Imprimir "Europa"
				entrega = peso * 10
			5:Imprimir "Asia"
				entrega = peso * 18
		FinSegun
		Imprimir "El costo de la entrega de tu producto son de: ",entrega," euros"
	FinSi
FinAlgoritmo
