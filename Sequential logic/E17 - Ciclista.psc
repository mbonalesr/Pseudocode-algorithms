//Ejercicio 17 - Estructura secuencial
//Problema: Un ciclista parte de una ciudad A a las HH horas, MM minutos y SS segundos. El tiempo de viaje hasta llegar a otra ciudad B es de T segundos. Escribir un algoritmo que determine la hora de llegada a la ciudad B.
//Entrada: Variables enteras HH, MM, SS.
//Salida: Variable T como variable real.
//Diseño:
//1.Pedirle al usuario que ingrese HH horas, MM minutos y SS minutos que sale el ciclista de la ciudad.
//2.Pedirle al usuario que ingrese T.
//3.Convertir todo a segundos.
//4.Restar el tiempo de llegada con el de salida
//5.Convertirlo todo a horas.
Algoritmo Ciclista
	Definir HH,MM,SS,T,HMS_conv,lleg,HH_l,MM_l,SS_l Como Entero
	Escribir "Escribe la hora en la que sale el ciclista de Morelia: "
	Leer HH	
	Escribir "Escribe los minutos en que sale el ciclista: "
	Leer MM
	Escribir "Escribe los segundos en la que sale el ciclista: "
	Leer SS
	Escribir "Hora de salida: ",HH, " horas, ",MM," minutos, ",SS," segundos"
	Escribir "Tiempo de viaje (en segundos): "
	Leer T
	HMS_conv = (HH * 3600) + (MM * 60) + SS
	lleg = HMS_conv + T
	HH_l = trunc(lleg / 3600) Mod 24 //Mod para definirlo a un rango de valores particulares, aquí Mod 24 se refiere a que tomara valores de 0 hasta 24.
	MM_l = trunc(lleg / 60) Mod 60
	SS_l = lleg % 60
	Escribir "Hora de llegada: ",HH_l, " horas, ",MM_l," minutos, ",SS_l," segundos"
FinAlgoritmo
