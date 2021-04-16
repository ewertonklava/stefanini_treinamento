#language:pt

Funcionalidade: calcular os lados do triangulo

Esquema do Cenario: calcular um triangulo equilátero
	Dado que eu tenha os lados do triangulo
	Quando digito os lados "<lado1>" "<lado2>" "<lado3>" 
	Entao tenho a mensagem "<mensagem>"

	Exemplos:
	|lado1 | lado2 | lado3 | mensagem               | 
	|10    |10     |10     |O triângulo é Equilátero|
	|10    |10     |11     |O triângulo é Isósceles |
	|10    |11     |12     |O triângulo é Escaleno  |