.data #declaração de variaveis
hello: .asciiz "Olá mundo! "

.text #execução
	li $v0,4 #registrando no registrador v0 # comando 4 é a chamada de printagem de uma string
	la $a0,hello #$a0 carregando o argumento de valores
	syscall #chamada de sistema
