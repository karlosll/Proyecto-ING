//Algoritmo sin_titulo
	// Funciones o SubAlgoritmo  del proyecto
	// SubAlgoritmo menus del proyecto
	Funcion opcion=presentarMenu(titulo,menu,lim)
		Definir opcion Como Caracter
		Definir pos Como Entero
		Borrar Pantalla
		Escribir titulo
		Para pos=0 Hasta lim-1 Con Paso 1 Hacer
			Escribir menu[pos]
		Fin Para
		Escribir "       Elija opci?n[1..",lim,"]" Sin Saltar
		leer opcion
FinFuncion
//NUMERICOS
//1)
// Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero1"
	leer num1
	Escribir "Ingrese numero2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion
//2)
//leer dos numeros y dividir por resta 
Funcion divisonPorResta()
	Definir dividiendo,divisor,cont,rest Como Real
	Escribir "ingrese el dividiendo"
	Leer dividiendo
	Escribir "ingrese el divisor"
	Leer divisor
	cont=0
	rest=dividiendo
	Mientras rest-divisor >= 0 Hacer
		rest=rest-divisor
		Escribir (rest+divisor),"-",divisor,"=",rest
		cont=cont+1
	FinMientras
	Escribir "la division entre: ",dividiendo,"/",divisor,"=",cont
FinFuncion
//3)
//leer dos numeros y multiplicar sor suma
Funcion multiplicacionPorSuma()
	Definir num1,num2,suma,i Como Real
	Escribir "ingrese el primer numero"
	Leer num1
	Escribir "ingrese el segundo numero"
	Leer num2
	suma=0
	Para i=1 Hasta num2 Con Paso 1 Hacer
		suma=suma+num1
		Escribir suma-num1,"+",num1,"=",suma
	FinPara
	Escribir "la multiplicacion de ",num1,"*",num2,"=",suma
FinFuncion
//4)
//Dado una serie de numeros sumar los pares y el produco multiplos de 5
Funcion sumaParproductomultiplosde5()
	Definir num Como Real;
	Definir i,j,f,n Como Entero;
	j=0
	f=1
	Escribir "ingrese la cantidad de numeros"
	Leer n
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingresa un numero"
		Leer num;
		Si num%2=0 Entonces
			j=j+num
		FinSi
		si num%5=0 Entonces
			f=f*num
		FinSi
	FinPara
	Escribir "La suma de los pares es = ",j
	Escribir "El producto de la suma de los multiplos de 5 es = ",f
FinFuncion
//5)
//Presentar cantidad de digitos de cada numero de una secuencia hasta 0
Funcion diferentede0()
	Definir n,c,a Como Entero
	n=1;c=0
	Mientras n<>0 Hacer
		Escribir "ingrese un numero diferente de 0"
		Leer n ;a=n
		Mientras a<>0 Hacer
			a=trunc(a/10);c=c+1
		FinMientras
	FinMientras
	Escribir "cantidad de digitos=" c
FinFuncion
//6)
//presentar el valor de n trajes con sus respectivos descuento e iva
Funcion ValorDesIvaPago()
	Definir n,i,des,iva,pago,traje Como Real
	traje=0
	Escribir "ingrese la cantidad de trajes"
	Leer n
	Para i=1 Hasta n Hacer
		Escribir "ingrese el precio de los trajes"
		Leer traje
		si traje>=100 Entonces
			des=traje*0.10;iva=(traje-des)*0.12 ;pago=traje-des+iva
			Escribir "el precio es de ",traje,"$ el descuento es de ",des,"$ el iva es de ",iva,"$ y el valor a pagar es de: ",pago,"$"
		SiNo
			des=traje*0.05 ;iva=(traje-des)*0.12;pago=traje-des+iva
			Escribir "el precio es de ",traje,"$ el descuento es de ",des,"$ el iva es de ",iva,"$ y el valor a pagar es de: ",pago,"$"
		FinSi
	FinPara
FinFuncion
//7)
//Dado tres numeros ingresados ver si el segundo es mayor
Funcion MayorTresNumeros()
	Definir a,b,c Como Real
	Escribir "ingrese numero"
	Leer a,b,c
	si b>a y b>c Entonces
		Escribir "el numero ",b," si es mayor"
	sino 
		Escribir "el numero ",b," no es mayor"
	FinSi
FinFuncion
//8)
//la secuencia termina cuando se ingrese un numero negativo
Funcion promedio()
	Definir n,c,suma,prom Como real
	n = 0;c = 0;suma = 0
	Mientras n >= 0 Hacer
		Escribir "Ingresa un numero"
		leer n
		si n > 0 Entonces
			c = c + 1
			suma = suma + n
			prom=suma/c
		FinSi
	FinMientras
	Escribir "EL promedio de los numeros es: ",prom
FinFuncion
//9)
//Dado dos numeros ver si son amigos
Funcion numerosAmigos()
	Definir b,x,i,acu,acu2 Como Entero
	acu=0;acu2=0
	Escribir "Por favor ingrese numeros:"
	Leer x,b
	Para i=1 Hasta x-1 Hacer
		si x % i = 0 Entonces
			acu=i+acu
		FinSi
	FinPara
	Para i=1 Hasta b-1 Hacer
		si b MOD i=0 Entonces
			acu2=i+acu2
		FinSi
	FinPara
	si acu=acu2 Entonces
		Escribir "los numeros son amigos"
	SiNo
		Escribir "los numeros no son amigos"
	FinSi
FinFuncion
//10)
//determinar si dos numeros son primos gemelos 
Funcion primosGemelos()
	Definir r,div,primo,a,b Como Real
	div=2;primo=1;r=0
	Escribir "introdusca un numero"
	Leer a,b
	Mientras (div<a) y (div<b) y primo=1
		r=a MOD div
		si r=0 Entonces
			primo=0
		FinSi
		r=b MOD div
		si r=0 Entonces
			primo=0
		FinSi
		div=div+1
	FinMientras
	si primo=1 Entonces
		Escribir "los numeros son primos gemelos"
	SiNo
		Escribir "los numeros no son primos gemelos"
	FinSi
FinFuncion
//CADENAS
//1)
//Presentar un nombre caracter por caracter
Funcion EscribirNombre()
	Definir nombre Como Caracter
	Definir pos,l Como Entero
	nombre=""
	pos=0;l=0
	Escribir "Ingrese un nombre"
	Leer nombre
	l = Longitud(nombre) - 1
	Para pos=0 Hasta l Con Paso 1 Hacer
		Escribir Subcadena(nombre,pos,pos) 
	Fin Para
	pos=l
	Escribir ""
FinFuncion
//2)
//Presentar el primero, el medio y el ultimo caracter de una frase
Funcion palabra()
	Definir frase,frase1,frase2,frase3 Como Caracter
	Definir l,d,pos Como Real
	frase=""
	l=0;d=0;pos=0
	Escribir "Ingrese una frase"
	Leer frase
	l = Longitud(frase) - 1
	si l>=0 Entonces
		d=trunc(l/2)
	FinSi
	frase1 =Subcadena(frase,0,0)
	frase2=Subcadena(frase,d,d)
	frase3=Subcadena(frase,l,l)
	pos=l
	Escribir frase1,frase2,frase3
FinFuncion
//3)
//Dado dos nombres indicar si son iguales
Funcion CompararNombres()
	Definir nom1,nom2 Como Caracter
	Escribir "ingrese el primer nombre"
	Leer nom1
	Escribir "ingrese el segundo nombre"
	Leer nom2
	si nom1=nom2 Entonces
		Escribir "los nombres son iguales"
	SiNo
		Escribir "los nombres no son iguales"
	FinSi
FinFuncion
//4)
//Dadas dos frase indicar la de mayor longitud
Funcion CompararLongutid()
	Definir f1,f2 Como Caracter
	Definir l1,l2 Como Entero
	l1=0;l2=0
	Escribir "ingrese texto 1" 
	leer f1
	Escribir "ingrese texto 2" 
	Leer f2
	l1= Longitud(f1)-1
	l2=Longitud(f2)-1
	si l1>l2 Entonces
		Escribir "el texto 1 tiene mayor longitud que el texto 2"
	SiNo
		Si l1<l2 Entonces
			Escribir "el texto 2 tiene mayor longitud que el texto 1"
		FinSi
		si l1=l2 Entonces
			Escribir "los dos textos tienen la misma longiud"
		FinSi
	FinSi
FinFuncion
//5)
//Indicar cuantas ,.;: hay en una cadena
Funcion Contarsignos()
	Definir  frase Como Caracter
	Definir l,pos,c,c2,c3,c4 Como Entero
	l=0;pos=0;c=0;c2=0;c3=0;c4=0
	Escribir "ingrese una frase"
	Leer frase
	l=Longitud(frase)-1
	Para pos=0 Hasta l Con Paso 1 Hacer
		si Subcadena(frase,pos,pos)="," Entonces
			c=c+1
		FinSi
		si Subcadena(frase,pos,pos)="." Entonces
			c2=c2+1
		FinSi
		si Subcadena(frase,pos,pos)=";" Entonces
			c3=c3+1
		FinSi
		si Subcadena(frase,pos,pos)=":"
			c4=c4+1
		FinSi
    FinPara
	Escribir "hay ",c," ," 
	Escribir "hay ",c2," ."
	Escribir "hay ",c3," ;"
	Escribir "hay ",c4," :"
FinFuncion
//6)
//Dado una cadena indicar cuantas vocales, consonantes y digitos hay
Funcion VocalesConsonantesDigitos()
	Definir  frase Como Caracter
	Definir l,v,x,c,b Como Entero
	l=0;x=1;v=0;c=0;b=0
	Escribir "ingrese una frase"
	Leer frase
	l=Longitud(frase) 
	Mientras x<=l Hacer
		Segun Subcadena(frase,x,x) Hacer
			"a"o"A":
				v=v+1
			"e"o"E":
				v=v+1
			"i"o"I":
				v=v+1
			"o"o"O":
				v=v+1
			"u"o"U":
				v=v+1
			"0":
				b=b+1
			"1":
				b=b+1
			"2":
				b=b+1
			"3":
				b=b+1
			"4":
				b=b+1
			"5":
				b=b+1
			"6":
				b=b+1
			"7":
				b=b+1
			"8":
				b=b+1
			"9":
				b=b+1
			De Otro Modo:
				c=c+1
		FinSegun
		x=x+1
	FinMientras
	Escribir "la frase ",frase," tiene ",v," vocales"
	Escribir "la frase ",frase," tiene ",c," consonantes"
	Escribir "la frase ",frase," tiene ",b," digitos"
FinFuncion
//7)
//Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras
Funcion ContarPalabras()
	Definir frase,carAnterior,car Como Caracter
	Definir pos,l,c Como Entero
	frase=""
	pos=0;l=0;c=1
	Escribir "Ingrese Frase"
	Leer frase
	l = Longitud(frase) - 1
	Para pos=0 Hasta l Con Paso 1 Hacer
		car=Subcadena(frase,pos,pos)
		carAnterior = Subcadena(frase,pos-1,pos-1)
		Escribir car Sin Saltar
		Si car<>" " y carAnterior = " "  Entonces
			c=c+1
		Fin Si
	Fin Para
	Escribir ""
	Escribir "la frase=",frase," tiene ",c, " palabras"
FinFuncion
//8)
//Presentar la suma de los digitos de una cedula
Funcion cedula()
	Definir l,n,pos Como Entero
	Definir frase Como Caracter
	n=0
	Escribir "ingrese numero de cedula"
	Leer frase
	l=Longitud(frase)-1
	para pos=0 Hasta l Con Paso 1 Hacer
		n=(convertirANumero(subcadena(frase,pos,pos)))+n
	FinPara
	Escribir "la suma de los numeros=" n
FinFuncion
//9)
//Indicar si una palabra es palindroma
Funcion PalabraPalindroma()
	Definir cad1,cad2 Como Caracter;
	Definir pos,l Como Entero;
	pos=0;l=0
	cad2 = ""
	Escribir "Introduce una cadena:"
	Leer cad1
	l=Longitud(cad1)-1
	Para pos=l Hasta 0 Con Paso -1 Hacer
		cad2=Concatenar(cad2,Subcadena(cad1,pos,pos))
	FinPara
	Si cad1=cad2 Entonces
		Escribir "Es pal?ndroma"
	SiNo
		Escribir "No es pal?ndroma"
	FinSi	
FinFuncion
//10)
//Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena
Funcion PosicionDeCaracter()
	Definir frase,caract Como Caracter
	Definir pos,l,c,l2,pos2,pos3,arreglos Como Entero 
	Dimension arreglos[20]
	frase=""
	pos=0;l=0;c=1;pos2=0;pos3=0
	Escribir "Ingrese Frase"
	Leer frase
	l = Longitud(frase) - 1
	Escribir "ingrese caracter"
	Leer caract
	l2=Longitud(caract)
	Mientras pos2<=l2 Hacer
		Para pos=0 Hasta l Con Paso 1 Hacer
			si Subcadena(frase,pos,pos)=Subcadena(caract,pos2,pos2) Entonces
				arreglos[pos3]=pos
				pos3=pos3+1
			finsi
		FinPara
		pos2=pos2+1
	FinMientras
	Escribir arreglos[0]
FinFuncion

//ARREGLOS
//1)
//Dado un arreglo cualquiera ingresarlo y presentarlo
Funcion ArreglosDeNumeros()
	Definir numeros,pos,lon,num Como Entero
	Dimension numeros[10]
	lon=0;pos=0
	Escribir "Cantidad de elementos de la serie"
	leer lon
	// ingrese los elementos al arreglo hasta la longitud ingresada    
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Numero#",pos+1
		Leer num 
		numeros[pos] = num
	Fin Para
	Escribir "Numeros del arreglo"
	// presenta los elementos del arreglo desde la posicion 0 
	// hasta su longitud
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "[",pos,"]=",numeros[pos]
	Fin Para
FinFuncion
//2)
//Presentar los numeros pares de un arreglo
Funcion ArregloDePares()
	Definir n,c,arreglo,num,pos Como Entero
	Escribir "INGRESE LA CANTIDAD DE NUMEROS";Leer n
	Dimension arreglo[n]
	c=0;pos=0
	Mientras c < n Hacer
		Escribir "ingrese numero";Leer num
		si num MOD 2=0 Entonces
			arreglo[pos]=num
			pos=pos+1
		FinSi
		c=c+1
	FinMientras
	Escribir "ARREGLO"
	para c=0 Hasta pos-1 Con Paso 1 Hacer
		Escribir "[",c,"]=",arreglo[c]
	FinPara
FinFuncion
//3)
//Dado una serie de numeros guardar en un arreglo solo los numeros negativos
Funcion NumerosNegativos()
	Definir n,c,arreglo,num,pos Como Entero
	Escribir "INGRESE LA CANTIDAD DE NUMEROS";Leer n
	Dimension arreglo[n]
	c=0;pos=0
	Mientras c < n Hacer
		Escribir "ingrese Numero"
		Leer num
		si num < 0 Entonces
			arreglo[pos]=num
			pos=pos+1
		FinSi
		c=c+1
	FinMientras
	Escribir "ARREGLO"
	para c=0 Hasta pos-1 Con Paso 1 Hacer
		Escribir "[",c,"]=",arreglo[c]
	FinPara
FinFuncion
//4)
//Dado un arreglo de nombres presentar el primer caracter de cada nombre
Funcion PrimerCaracterDeNombre()
	Definir nombres,nombre,frase Como Caracter
	Definir lon,pos,pos2,numeros Como Entero
	Dimension numeros[10],nombres[10]
	lon=0;pos=0;pos2=0
	Escribir "ingrese la candidad de nombres";Leer lon
	para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "ingrese nombre#",pos+1
		Leer nombre
		nombres[pos]=nombre
		lon=Longitud(nombre)-1
		para pos2<-0 Hasta lon Con Paso 1 Hacer
			frase=Subcadena(nombre,0,0)
		FinPara
		Escribir frase
	FinPara
	Escribir "ARREGLO"
	para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "[",pos,"]=",nombres[pos]
	FinPara
FinFuncion
//5)
//Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo
Funcion AreglosDeNumeros()
	Definir n,c,arreglo,num,pos,pos2,acu Como Entero
	Definir div Como Real
	Escribir "INGRESE LA CANTIDAD DE NUMEROS";Leer n
	Dimension arreglo[n]
	c=0;pos=0;pos2=0;acu=0;
	Mientras c < n Hacer
		Escribir "ingrese Numero"
		Leer num
		si num > 0 Entonces
			arreglo[pos]=num
			pos=pos+1
			acu=acu+num
		FinSi
		c=c+1
	FinMientras
	div=acu/pos
	Escribir "ARREGLO"
	para c=0 Hasta pos-1 Con Paso 1 Hacer
		Escribir "[",c,"]=",arreglo[c]
	FinPara
	Escribir "hay ",pos," digitos"
	Escribir "la suma es ",acu
	Escribir "el promedio es ",div
FinFuncion
//6)
//Dado un arreglo presentarlo al revez solo los numeros multiplos de 5
Funcion multiplode5()
	Definir arreglo,n,pos,c Como Entero
	Dimension arreglo[20]
	Escribir "ingrese cantidad de #"
	leer n
	para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "digite los numeros"
		Leer arreglo[pos]
	FinPara
	para pos=n-1 Hasta 0 Con Paso -1 Hacer
		si arreglo[pos] mod 5 = 0 Entonces
			Escribir  arreglo[pos] " " Sin Saltar
			esperar 1 Segundos
		FinSi
	FinPara
FinFuncion
//7)
//Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo
Funcion arreglonumero()
	Definir pos,n,arreglo,c Como Entero
	Dimension arreglo[20]
	Escribir "ingrese cantidad de #"
	leer n
	para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "ingrese el numero"
		Leer arreglo[pos]
	FinPara
	c=trunc(n/2)
	Escribir "primer elemento: " arreglo[0] "; segundo elemento: " arreglo[c] "; ultimo elemto: " arreglo[n-1]
FinFuncion
//8)
//Dado un arreglo copiarlo en otro y presentarlo
Funcion copiarypegar()
	Definir arreglo1,arreglo2,pos,lon Como Entero
	Dimension arreglo1[10] ,arreglo2[10]
	lon=0;pos=0
	Escribir "Cantidad de elementos de la serie"
	leer lon
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "1.Numero#",pos+1
		Leer arreglo1[pos] 
	Fin Para
	Escribir "segundo arreglo"
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		arreglo2[pos]=arreglo1[pos]
		Escribir "2.Numero#",pos+1
		Escribir arreglo2[pos]
	Fin Para
FinFuncion
//9)
//Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos
Funcion dosArreglos()
	Definir arreglo1,arreglo2,arreglo3,pos,lon,num Como Entero
	Dimension arreglo1[10] ,arreglo2[10], arreglo3[10]
	lon=0;pos=0
	Escribir "Cantidad de elementos de la serie"
	leer lon
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir " primer arreglo Numero#",pos+1
		Leer arreglo1[pos] 
	Fin Para
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir " segundo arreglo Numero#",pos+1
		Leer arreglo2[pos] 
	Fin Para
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		arreglo3[pos]=arreglo2[pos]+arreglo1[pos]
		Escribir "suma de los arreglos Numero#",pos+1
		Escribir arreglo1[pos] "+" arreglo2[pos] "=" arreglo3[pos]
	Fin Para
FinFuncion
//10)
//Dado una serie de numeros guarda en un arreglo los factoriales
Funcion factorial()
	Definir arreglo1,arreglo2,pos,lon,x,n,factoriale Como Entero
	lon=0;pos=0;x=1
	Dimension arreglo1[10] ,arreglo2[10]
	lon=0;pos=0
	Escribir "Cantidad de elementos de la serie"
	leer lon
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "1.Numero#",pos+1
		Leer arreglo1[pos] 
	Fin Para
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		n=1;factoriale=1
		Mientras n<=arreglo1[pos] Hacer
			factoriale=factoriale*n
			n=n+1
		FinMientras
		arreglo2[pos]=factoriale
		Escribir arreglo2[pos] " " sin saltar
	FinPara
FinFuncion
// Algoritmo principal del proyecto
Algoritmo Proy
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Ejercio 1"
	menuNumeros[1] = "  2)Ejercio 2"
	menuNumeros[2] = "  3)Ejercio 3"
	menuNumeros[3] = "  4)Ejercio 4"
	menuNumeros[4] = "  5)Ejercio 5"
	menuNumeros[5] = "  6)Ejercio 6"
	menuNumeros[6] = "  7)Ejercio 7"
	menuNumeros[7] = "  8)Ejercio 8"
	menuNumeros[8] = "  9)Ejercio 9"
	menuNumeros[9] = "  10)Ejercio 10"
	menuNumeros[10]= "  11)Salir"
	
	// arreglos submenu cadenas
	menuCadenas[0] = "  1)Ejercio 1"
	menuCadenas[1] = "  2)Ejercio 2"
	menuCadenas[2] = "  3)Ejercio 3"
	menuCadenas[3] = "  4)Ejercio 4"
	menuCadenas[4] = "  5)Ejercio 5"
	menuCadenas[5] = "  6)Ejercio 6"
	menuCadenas[6] = "  7)Ejercio 7"
	menuCadenas[7] = "  8)Ejercio 8"
	menuCadenas[8] = "  9)Ejercio 9"
	menuCadenas[9] = "  10)Ejercio 10"
	menuCadenas[10] = "  11)Salir"
	
	// arreglo submenu arreglos
	menuArreglos[0]= "1)Ejercio 1"
	menuArreglos[1]= "2)Ejercio 2"
	menuArreglos[2]= "3)Ejercio 3"
	menuArreglos[3]= "4)Ejercio 4"
	menuArreglos[4]= "5)Ejercio 5"
	menuArreglos[5]= "6)Ejercio 6"
	menuArreglos[6]= "7)Ejercio 7"
	menuArreglos[7]= "8)Ejercio 8"
	menuArreglos[8]= "9)Ejercio 9"
	menuArreglos[9]= "10)Ejercio 10"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
			"1":
				opcn=""
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Numeros",menuNumeros,11)
					Segun opcn Hacer
						"1":
							Escribir "Mayor de dos Numeros"
							mayorDosNumeros()
							Esperar 5 Segundos
						"2":
							Escribir "Dividir dos numeros por restas"
							divisonPorResta()
							Esperar 5 Segundos
						"3":
							Escribir "Multiplicar dos numeros por sumas"
							multiplicacionPorSuma()
							Esperar 5 Segundos
						"4":
							Escribir "Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
							sumaParproductomultiplosde5()
							Esperar 5 Segundos
						"5":
							Escribir "Presentar cantidad de digitos de cada numero de una secuencia hasta 0"
							diferentede0()
							Esperar 5 Segundos
						"6":
							Escribir "Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
							ValorDesIvaPago()
							Esperar 5 Segundos
						"7":
							Escribir "Dado tres numeros indicar si el segundo es el mayor"
							MayorTresNumeros()
							Esperar 5 Segundos
						"8":
							Escribir "Dado una secuencia de numeros presentar su promedio"
							promedio()
							Esperar 5 Segundos
						"9":
							Escribir "Numeros amigos"
							numerosAmigos()
							Esperar 5 Segundos
						"10":
							Escribir "primos gemelos"
							primosGemelos()
							Esperar 5 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 2 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras
				
			"2":
				opcn=""
				Mientras opcn <> "11" Hacer
					opcn=presentarMenu("Menu Cadenas",menuCadenas,11)
					Segun opcn Hacer
						"1":
							Escribir "Presentar un nombre caracter por caracter"
							EscribirNombre()
							Esperar 5 Segundos
						"2":
							Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
							palabra()
							Esperar 5 Segundos
						"3":
							Escribir "Dado dos nombres indicar si son iguales"
							CompararNombres()
							Esperar 5 Segundos
						"4":
							Escribir "Dadas dos frase indicar la de mayor longitud"
							CompararLongutid()
							Esperar 5 Segundos
						"5":
							Escribir "Indicar cuantas ,.;: hay en una cadena"
							Contarsignos()
							Esperar 5 Segundos
						"6":
							Escribir "Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
							VocalesConsonantesDigitos()
							Esperar 5 Segundos
						"7":
							Escribir "Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
							ContarPalabras()
							Esperar 5 Segundos
						"8":
							Escribir "Presentar la suma de los digitos de una cedula"
							cedula()
							Esperar 5 Segundos
						"9":
							Escribir "Indicar si una palabra es palindroma"
							PalabraPalindroma()
							Esperar 5 Segundos
						"10":
							Escribir "Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
							PosicionDeCaracter()
							Esperar 5 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 2 Segundos
						De Otro Modo:
							Escribir "opcion invalida..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras
			"3":
				opcn=""
				Mientras opcn <> "11" Hacer
					opcn=presentarMenu("Menu Arreglos",menuArreglos,11)
					Segun opcn Hacer
						"1":
							Escribir "Dado un arreglo cualquiera ingresarlo y presentarlo"
							ArreglosDeNumeros()
							Esperar 5 Segundos
						"2":
							Escribir "Presentar los numeros pares de un arreglo"
							ArregloDePares()
							Esperar 5 Segundos
						"3":
							Escribir "Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
							NumerosNegativos()
							Esperar 5 Segundos
						"4":
							Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
							PrimerCaracterDeNombre()
							Esperar 5 Segundos
						"5":
							Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
							AreglosDeNumeros()
							Esperar 5 Segundos
						"6":
							Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
							multiplode5()
							Esperar 5 Segundos
						"7":
							Escribir "Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
							arreglonumero()
							Esperar 5 Segundos
						"8":
							Escribir "Dado un arreglo copiarlo en otro y presentarlo"
							copiarypegar()
							Esperar 5 Segundos
						"9":
							Escribir "Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
							dosArreglos()
							Esperar 5 Segundos
						"10":
							Escribir "Dado una serie de numeros guarda en un arreglo los factoriales"
							factorial()
							Esperar 5 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 2 Segundos
						De Otro Modo:
							Escribir "opcion invalida..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras
			"4":
				Escribir "Gracias por usar el Sistema"
				Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmO
