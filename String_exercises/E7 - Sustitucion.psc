//Ejercicio 7 - Cadenas de caracteres
//Problema: Pide una cadena y dos caracteres por teclado (valida que sea un carácter), sustituye la aparición del primer carácter en la cadena por el segundo carácter.
//Entrada: La cadena y los dos caracteres (variable de cadena y caracteres).
//Salida: La cadena original solo sustituyendo por el segundo caracter al empezar la palabra.
//Diseño
// 1.Iniciar cambio = ""
// 2.Pedirle al usuario que escriba la palabra que sea y leer.
// 3.Ahora que escriba los dos caracteres.
// 4.Validar que los caracteres son caracteres poniendole un si que caracter sea mayor o igual a "a" y menor o igual a "z".
// 5.Hacer un para, que vaya de i = 1 hasta longitud de la palabra.
// 6.Comparar el caracter 1 con la subcadena generada y si si es igual, concatenarla con la variable cambio donde se le sumara caracter 2.
// 7.Si no es igual, concatenarla con la letra que salga.
// 8.Mostrar cambio.
//NOTA: Cambie la variable 'cambio' por 'sust'.
Algoritmo Sustitucion
    Definir palabra, sust Como Cadena
    Definir carac1, carac2 Como Caracter
    sust = ""
	
    Imprimir Sin Saltar "Escribe la palabra que quieras: "
    Leer palabra
	
    Imprimir Sin Saltar "Ahora escribe el caracter que quieras sustituir (de la palabra): "
    Leer carac1
	
    Imprimir Sin Saltar "Ahora escribe el caracter que quieras que aparezca (de la palabra): "
    Leer carac2
    
    Si Longitud(carac1) = 1 Y Longitud(carac2) = 1 Entonces
        Si ( (carac1 >= "a" Y carac1 <= "z") O (carac1 >= "A" Y carac1 <= "Z") ) Y ( (carac2 >= "a" Y carac2 <= "z") O (carac2 >= "A" Y carac2 <= "Z") ) Entonces
            Para i = 1 Hasta Longitud(palabra) Hacer
                Si carac1 = Subcadena(palabra, i, i) Entonces
                    sust = sust + carac2
                SiNo
                    sust = sust + Subcadena(palabra, i, i)
                FinSi
            FinPara
            Imprimir sust
        SiNo
            Imprimir "Caracter inválido"
        FinSi
    SiNo
        Imprimir "Caracter inválido"
    FinSi
FinAlgoritmo