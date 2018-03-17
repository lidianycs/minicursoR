#Script R minicurso de R p/ análise de dados da saúde

#parte3 - leitura de arquivos e pacotes

library(ggplot2)
library(dplyr)
library(tidyr)

#ler os dados de mortalidade do arquivo
dados <- read.csv2("mortalidade.csv", header = TRUE, sep=";", check.names=FALSE)

#reorganizar os dados
dados_organizados = dados %>% gather("ANOS","MORT",2:21)

#filtrar os dados apenas de Sergipe
sergipe = dados_organizados %>% filter(UF=="SE")

#plotar o gráfico de linhas com os dados de Sergipe
ggplot(sergipe,  aes(x=ANOS)) + 
  geom_line(aes(y = MORT, group = 1, colour=UF)) +
  xlab("ANOS") + ylab("Nº de óbitos p/ 1000 nascidos vivos") + ggtitle("Mortalidade infantil em Sergipe")

#filtrar os dados de alguns estados p/ comparação
estados = dados_organizados %>% filter(UF=="SE" | UF =="SP" | UF == "BA" | UF == "RJ")

#plotar um gráfico de barras p/ comparação
ggplot(data = estados, aes (x=ANOS, y=MORT, fill=UF))+ 
  geom_bar(stat='identity', width=0.5, position = "dodge") +
  labs(x='Anos', y='Nº de óbitos p/ 1000 nascidos vivos', title="Mortalidade infantil: comparativo")

#plotar um gráfico de pontos e linhas para comparação
ggplot(data = estados, aes(x = factor(ANOS), y = MORT, colour = UF)) +       
  geom_line(aes(group = UF)) + geom_point()+
  xlab(" ") + ylab("Nº de óbitos p/ 1000 nascidos vivos") +
  ggtitle("Mortalidade infantil: comparativo")

#Exportar o gráfico para arquivo
png("mortalidade_sergipe.png")

ggplot(sergipe,  aes(x=ANOS)) + 
  geom_line(aes(y = MORT, group = 1, colour=UF)) +
  xlab(" ") + ylab("Nº de óbitos p/ 1000 nascidos vivos") + 
  ggtitle("Mortalidade infantil em Sergipe")

dev.off()

pdf("mortalidade_comparativo.pdf")
ggplot(data = estados, aes(x = factor(ANOS), y = MORT, colour = UF)) +       
  geom_line(aes(group = UF)) + geom_point()+
  xlab(" ") + ylab("Nº de óbitos p/ 1000 nascidos vivos") +
  scale_x_discrete(breaks = c(1996, 2000, 2005, 2011, 2015)) +
  ggtitle("Mortalidade infantil: comparativo")
dev.off()
#tiff()
#jpeg()


#Exercício criar um gráfico comparativo da mortalidade entre os estados da região norte e sudeste
#Salvar o gráfico em PDF
mort_comp = dados_organizados %>% filter(UF=="AC" | UF =="AM" | UF =="AP" | UF == "PA" 
                                          | UF == "RO" | UF == "RR" | UF == "TO")
pdf("mortalidade_norte.pdf")

ggplot(data = mort_comp, aes(x = factor(ANOS), y = MORT, colour = UF)) +       
  geom_line(aes(group = UF)) + geom_point()+
  xlab(" ") + ylab("Nº de óbitos p/ 1000 nascidos vivos") +
  scale_x_discrete(breaks = c(1996, 2000, 2005, 2011, 2015)) +
  ggtitle("Mortalidade infantil na região norte")

dev.off()