rm(list=ls())
graphics.off()
library(qcc)

tipos_de_peças <- c(
    "Queimadores frontais",
    "Queimadores traseiros",
    "Porta do forno",
    "Controle do queimador",
    "Outros",
    "Timer",
    "Roletes da gaveta",
    "Reguladores do forno"
)

numero_de_peças <- c(460, 290, 193, 135, 84, 53, 46, 26)

names(numero_de_peças) <- tipos_de_peças

pareto_chart_obj <- pareto.chart(
  data = numero_de_peças,
  main = "Diagrama de Pareto de Peças de reposição",
  ylab = "Número de peças",
  ylab2 = "Porcentagem Acumulada",
  col = RColorBrewer::brewer.pal(length(numero_de_peças), "Paired") 
)
