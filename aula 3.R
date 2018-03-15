#Script R minicurso de R p/ análise de dados da saúde

#Aula 3 criando um gráfico de dispersão

library(ggplot2)

# CMI = coeficiente de mortalidade infantil - (média 1991, 2000, 2010) 
# RENDA = média da renda per capita dos municípios brasileiros (1991, 2000, 2010)
Municipios = read.csv("municipios_atlas.csv", sep=";")

#Exportar o gráfico para arquivo
png("dispersao_CMIxRENDA.png")

ggplot(data = Municipios, aes (x=RENDA, y=CMI))+
  geom_point(size=0.4) +
  geom_smooth(method = "lm", color="red", linetype=2) +
  labs(x='Renda', y='CMI', title="disp")

dev.off()

#Teste de correlação
cor(Municipios$RENDA, Municipios$CMI)
cor.test(Municipios$RENDA, Municipios$CMI)
