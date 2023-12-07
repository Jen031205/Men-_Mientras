SubProceso opcion <- programas
	
	definir opcion, n, a, x como entero;
	definir vocal Como Caracter;
	definir nombre, nom como texto;
	
	Escribir "----------Algoritmos :D ---------";
	escribir "---------------------------------";
	escribir "[1] Boleto de loteria------------";
	escribir "[2]Correo electronico------------";
	escribir "[3] Cuenta regresiva-------------";
	escribir "[4] Saludo-----------------------";
	escribir "[5] Hortalizas-------------------";
	escribir "[6] Saludar 10 veces-------------";
	escribir "[7] Salir------------------------";
	escribir sin saltar "Elige una opcion";
	leer opcion;
	
	
	
	limpiar pantalla;
	
	segun opcion hacer
		1:
			Escribir  "***Boleto de loteria***";
			definir num,c,a como entero ;
			Escribir ' Ingrese un número que cree ganará';
			leer  num;
			a <- azar(101);
			c <- 1;
			mientras num<>a hacer
				a <- azar(101);
				c<-c+1;
			FinMientras
			Si c <=100 Entonces
				Escribir 'En ', c, ' Intentos se lograra sacar tu número elegido';
			SiNo
				Escribir 'En 100 intentos no se logro sacar el número';
			FinSi
			Limpiar Pantalla;
			
			
		2:
			escribir "***Correo electronico***";
			
			Definir correo como texto;
			Definir arroba, punto, tam, i Como Entero;
			arroba<-0;
			punto<-0;
			Escribir Sin Saltar "Ingresa tu correo";
			leer correo;
			i <- 1;
			tam<-Longitud(correo);
			Mientras i <= tam-1 Hacer
				Si Subcadena(correo,i,i)="@" Entonces
					arroba<-arroba+1;
					si Subcadena(correo,i+1,i+1)="." Entonces
						ar<-par+1;
					FinSi
				FinSi
				si Subcadena(correo,i,i)="." Entonces
					punto<-punto+1;
				FinSi
				i <- i + 1;
			FinMientras
			
			Si arroba=0 o arroba>1 o punto=0 Entonces
				Escribir correo, " es un correo invalido";
			SiNo
				Escribir correo," es un correo valido";
			FinSi
			Esperar Tecla;
			Limpiar Pantalla;
			
			
		3:
			escribir "***Cuenta regresiva***";
			Definir cuenta como entero;
			
			Escribir "Ingrese un numero";
			Leer cuenta;
			
			Mientras cuenta > 0 Hacer
				cuenta <- cuenta - 1;
				Borrar Pantalla;
				Escribir "Cuenta regresiva: ", cuenta;
				Esperar 1 segundo;
				
			FinMientras
			
			esperar tecla;
			Limpiar Pantalla;
			
			
		4:
			escribir "***Saludo***";
			Definir mesanje, resp como texto;
			
			Escribir "Deseas un saludo?";
			Leer resp;
			
			Mientras resp = "yes" o resp = "si" Hacer
				Escribir "Hola";
				Esperar 2 segundos;
				
				Escribir "Deseas otro saludo?";
				Leer resp;
			FinMientras
			
			esperar tecla;
			Limpiar Pantalla;
			
		5:
			escribir "***Hortalizas***";
			Definir cant, cont Como Entero;
			Escribir "Ingresa la cantidad de hortalizas a sembrar ";
			Leer cant;
			cont <- 1;
			
			Mientras cont <= cant Hacer
				Si cont mod 2 = 0 Entonces
					Escribir sin saltar " & ";
				SiNo
					Escribir sin saltar "*";
				FinSi
				Si cont mod 10 = 0 Entonces
					Escribir " ";
				FinSi
				cont <- cont + 1;
			FinMientras
			Escribir " ";
			esperar tecla;
			Limpiar Pantalla;
			
		6:
			escribir "***Saludar 10 veces***";
			Definir Saludo Como Entero;
			Saludo <- 1;
			Mientras Saludo <= 10 Hacer
				Escribir 'Hola a todos';
				Saludo <- Saludo+1;
			FinMientras
			esperar tecla;
			Limpiar Pantalla;
			
		De Otro Modo:
			si opcion > 7 Entonces
				escribir "La opcion ingresada es invalida";
			FinSi
			
	FinSegun
	
	
FinSubProceso
Algoritmo Menu_Mientras
	definir c Como Entero;
	Repetir
		
		escribir programas();
		c<-programas();
	Hasta Que c=7
	Escribir "Hasta pronto :D ";
FinAlgoritmo

