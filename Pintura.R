rm(list=ls())
graphics.off()
library(qcc)

tipos_de_nao_conformidades <- c(
  "Spray leve",
  "Escorrimento",
  "Gotas",
  "Bolhas",
  "Respingos",
  "Tinta ruim",
  "Excesso de spray",
  "Outros"
)

numero_de_nao_conformidades <- c(582, 434, 227, 212, 141, 126, 109, 50)

names(numero_de_nao_conformidades) <- tipos_de_nao_conformidades

pareto_chart_obj <- pareto.chart(
  data = numero_de_nao_conformidades,
  main = "Diagrama de Pareto de não conformidades de pintura",
  ylab = "Número de não conformidades",
  ylab2 = "Porcentagem Acumulada",
  col = RColorBrewer::brewer.pal(length(numero_de_nao_conformidades), "Paired") 
)
