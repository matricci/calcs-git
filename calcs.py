#!/usr/bin/python2
#-*- coding: iso-8859-1 -*-
def reta():
	h = input ('digite o valor do maior lado :')
	print ('digite o valor dos outros lados:')
	ca =input('')
	co=input('')
	if h==(ca**2+co**2)**0.5:
		print('É um triângulo retângulo')
	else :
		print ('Não é um triângulo retângulo')
	
def conv():
	print ('qual unidade de medida de temperatura deseja converter ?')
	print ('1) Celcius para Kelvins')
	print ('2) Celcuis para Fahrenheit')
	print ('3) Kelvins para Celcius')
	op = input ('escolha uma opção:')
	if op == 1:
		c = input ('digite a temperatura em ºC:')
		k = 273.15 +c
		print ('a temperatura em Kelins é :', k)
	if op ==2:
		c =input ('digite a temperatura em ºC:')
		f = (9*c)/5+32
		print ('a temperatura em ºF é:', f)
	if op == 3:
		k = input ('digte a temperatura em Kelvins:')
		c = k - 273.15
		print ('a temperatura em ºC é:', c)
def htri():
	l = input ('digite o valor do lado')
	h = l*(3**0.5)/2
	print ('o altura é :', h)
def pit():	
	print ('1) para calcular o cateto adjacente')
	print ('2) para calcular o cateto oposto')
	print ('3) para calcular a hipotenusa')
	op=input('escolha uma opÃ§Ã£o:')
	if op == 1:	
		# calcula cateto adjacente 
		hip = input ('informe o valor da hipotenusa:')
		co = input ('informe o valor do cateto oposto:')
		ca = (hip**2.0-co**2.0)**0.5
		print ('o valor do cateto adjacente Ã©:',ca)
	if op==2:
		
		# calcula cateto oposto 
		hip = input ('informe o valor da hipotenusa:')
		ca = input ('informe o valor do cateto adjacente:')
		co = (hip**2.0-ca**2.0)**0.5
		print ('o valor do cateto oposto Ã©:',co)
	if op ==3:
		# calcula a hipotenusa
		ca = input('informe o valor do cateto adjacente:')
		co = input('informe o valor do cateto oposto:')
		hip = (ca**2+co**2)**0.5
		print ('o valor da hipotenusa Ã©:',hip)
	
def equ2():
	
	
	# solicita os valores da a, b e c
		a = input ('digite o valor de a: ')
		b = input ('digite o valor de b: ')
		c = input ('digite o valor de c: ')
	# calcula o valor do delta
		delta = b**2 - (4*a*c)
		print ('delta =',delta)
		if delta < 0 :
			import cmath
			x1 = (-b + cmath.sqrt(delta)) / (2*a)
			x2 = (-b - cmath.sqrt(delta)) / (2*a)
			print ('o valor de x1:',x1)
			print ('o valor de x2',x2)
		if delta == 0:
			x1 = -b / (2*a)
			print ('delta = 0, logo ha apenas uma raiz, x1=', x1)
		if delta > 0 :
			x1 = (-b + (delta**0.5)) / (2*a)
			x2 = (-b - (delta**0.5)) / (2*a)
			print ('as raizes sao:', x1, x2)

def fat():
	import math
	print ('Calcular fatorial n!')
	n = input ('Digite o valor de n:')
	f= math.factorial(n)
	print ('o valor de',n,'! :',f)
z =1
while z ==1 :
	print ('1) EquaÃ§Ã£o de segundo grau')
	print ('2) PitÃ¡goras')
	print ('3) Fatorial')
	print ('4) Conversor de Temperatura')
	print ('5) Altura de triângulo equilátero')
	print ('6) Verificar se é triângulo retângulo')
	o = input ('escolha uma opÃ§Ã£o:')
	if o==1:
		equ2()
	if o==2:
		pit()
	if o==3 :
		fat()
	if o==4:
		conv()
	if o==5:
		htri()
	if o==6:
		reta()
