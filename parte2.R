#Script R minicurso de R p/ análise de dados da saúde

#parte 2 - gráficos básicos


#GRÁFICOS
#anos
x = c(2010, 2011, 2012, 2013, 2014, 2015)
#quantidade de casos de dengue no estado
y = c(191.2, 94.6, 23.1, 209.1, 204.2, 222)
#gráfico de barras

#exercício 1
barplot(y, names.arg=x, main="Casos de dengue no Estado de São Paulo, em milhares", xlab="Anos", ylab="Casos de dengue")
#exercício 2
barplot(y, names.arg=x, main="Casos de dengue no Estado de São Paulo, em milhares", xlab="Casos de dengue", ylab="Anos", horiz = T)
#exercício 3
barplot(y, names.arg=x, main="Casos de dengue no Estado de São Paulo, em milhares", xlab="Anos", ylab="Casos de dengue", density = 10)
#exercício 4
barplot(y, names.arg=x, main="Casos de dengue no Estado de São Paulo, em milhares", xlab="Anos", ylab="Casos de dengue", density = 10, angle = 90)
#exercício 5
barplot(y, names.arg=x, main="Casos de dengue no Estado de São Paulo, em milhares", xlab="Anos", ylab="Casos de dengue", col=2, border=NA)
#exercício 6
barplot(y, names.arg=x, main="Casos de dengue no Estado de São Paulo, em milhares", xlab="Anos", ylab="Casos de dengue", col=2, border=NA, axes=F)

#hospitalizações de crianças em decorrência de acidentes por causa
mortes = c(3, 16,1,49, 12, 19)
names(mortes) = c("Intoxicação", "Queimadura", "Sufocação", "Queda", "Trânsito", "Outros")

#exercício 7
pie(mortes) #grafico pizza

rotulos = paste(mortes, "% ", names(mortes), sep="")

#exercício 8
pie(mortes,main="Distribuição das hospitalizações de crianças 
    em decorrência de acidentes por causa", labels=rotulos)

#exercício 9
pie(mortes,main="Distribuição das hospitalizações de crianças 
    em decorrência de acidentes por causa", labels=rotulos, col=rainbow(7), init.angle=160)
