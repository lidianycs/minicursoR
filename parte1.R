#Script R minicurso de R p/ análise de dados da saúde

#parte 1 - introdução ao ambiente

#variáveis 

#numerico
valor <- 81
valor

#caracteres / texto
string <- "Olá mundo"
string

#lógicos
x = 2
y = 5
p = x < y

z = y < x


#complexos
nc <- 2 +3i

#Operações

t = valor + valor
t = valor * valor
t = valor ^ 2
t = valor / 2
t = valor - 4

#Funções
x = 81
sqrt(x) #raiz quadrada
a = 19
sum(x, a) #soma



#vetores

#cria os vetores 
#vec com os valores 1, 4, 10.5, 54.48, 9 e 10
vec = c (1, 4, 10.5, 54.48, 9, 10)

#vec 2 com valores de 1 a 5
vec2 = c (1:5)


#vec3 concatenação de dois vetores de 1 a 3 e de 3 a 1
vec3 = c ((1:3), (3:1))

#vec 4 concatenação de 0, vec3 e 0 
vec4 = c(0, vec3, 0)

#calcular a média de 3 notas
vec5 = c(7, 8, 9)
mean(vec5)


b <- sum(vec5)/3
b