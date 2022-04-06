.data #declaração de variaveis
numero1: .asciiz "Digite o primeiro número: "
numero2: .asciiz "Digite o segundo número: "
resultado: .asciiz " O resultado= "

.text #execução
	li $v0,4 # comando 4 para ler uma string
	la $a0,numero1 #$a0 ler a string
	syscall #chamada de sistema
	
	li $v0,5 #ler um número inteiro que o usuário irá digitar
	syscall 
	
	move $t0,$v0 #movendo o valor que o usuário digitou para $t0
	
	li $v0,4 #comando para ler uma string
	la $a0,numero2 # ler a string
	syscall 
	
	li $v0,5 #ler o número inteiro que o usuário irá digitar
	syscall 
	
	move $t1, $v0 #movendo o valor o usuário digitou para $t1
	
	#tenho os dois valores em $t0 e $t1
	
	mult $t1, $t0 #multiplicando dois valores de 32bits = 64bits
	mflo $s3
	
	#mfhi multiplicando números altos
	#mflo multiplicando números menores
	
	li $v0, 4 #Comando para ler a string resultado
	la $a0,resultado #lendo resultado
	syscall 
	
	li $v0,1 # comando 1 para printar um número inteiro
	move $a0, $s3 # movendo o valor de t2 (onde foi calculado a soma) para o $a0
	syscall 	
