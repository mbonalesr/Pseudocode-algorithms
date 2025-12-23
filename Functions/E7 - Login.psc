// Ejercicio 7 - Funciones
// Problema: Crear una subrutina llamada "Login", que recibe un nombre de usuario y una contraseña y te devuelve Verdadero si el nombre de usuario es "usuario1" y la contraseña es "asdasd". Además recibe el número de intentos que se ha intentado hacer login y si no se ha podido hacer login incremente este valor.
//Crear un programa principal donde se pida un nombre de usuario y una contraseña y se intente hacer login, solamente tenemos tres oportunidades para intentarlo.
//Entrada: El nombre del usuario y la contraseña que ingrese el usuario (variables de cadena).
//Salida: El mensaje de 'Verdadero' o 'Falso' (Variable lógica y de cadena).
//Diseño:
// 1.Crear la función 'login' con argumentos 'user' y 'cont'
// 2.Definir la variable 'intentos' igual a 2.
// 3.Haremos un mientras 'intentos' sea mayor que cero y la condición booleana 'loggeado' sea falsa
// 4.Dentro del mientras, haremos una condicional en donde si el usuario es 'usuario1' y la contraseña es 'asdasd', cambie la variable booleana a verdadero e imprima un mensaje de bienvenida.
// 5.Si la condición es falsa, restaremos uno a 'intentos', le pediremos al usuario que vuelva a intentarlo y de nuevo imprimiremos los mensajes de ingreso al número de usuario y su contraseña.
// 6.Saldremos del mientras pero no de la función 'login', si 'loggeado' sigue siendo falso le escribiremos al usuario que su acceso es denegado.
// 7.Ahora iremos al algoritmo, donde definimos 'nombre_usuario', 'contraseña' como Cadenas, le pedimos al usuario su nombre así como la contraseña.
// 8.Llamaremos a la función 'login', donde pondremos como argumentos a 'nombre_usuario' y a 'contraseña'.
Funcion login(user,cont)
	intentos = 2
	Mientras intentos > 0 Y loggeado = Falso Hacer
		Si user = "usuario1" Y cont = "asdasd" Entonces
			loggeado = Verdadero
			Imprimir "Bienvenido"
		SiNo
			intentos = intentos - 1
			Imprimir "Vuelva a intentarlo"
			Imprimir Sin Saltar "Ingrese el nombre de usuario: "
			Leer user
			Imprimir Sin Saltar "Ahora la contraseña: "
			Leer cont
		FinSi
	FinMientras
	Si loggeado = Falso Entonces
		Imprimir "Acceso denegado, demasiados intentos fallidos"
	FinSi
FinFuncion 

Algoritmo Ext_datos
	Definir nombre_usuario,contraseña como Cadena
	Imprimir Sin Saltar "Ingrese el nombre de usuario: "
	Leer nombre_usuario
	Imprimir Sin Saltar "Ahora la contraseña: "
	Leer contraseña
	login(nombre_usuario,contraseña)
FinAlgoritmo
