rm(list=ls())
graphics.off()
library(qcc)

tipos_de_queixas <- c(
  "Itens faltantes",
  "Móveis arranhados (caminhão)", 
  "Chegada tardia (carregamento)",
  "Vidro quebrado",
  "Cortes/Arranhões (manuseio)",
  "Entrega endereço errado",
  "Estofamento manchado",
  "Entrega com atraso"
)

numero_de_queixas <- c(26, 20, 18, 13, 10, 9, 8, 5)

names(numero_de_queixas) <- tipos_de_queixas

pareto_chart_obj <- pareto.chart(
  data = numero_de_queixas,
  main = "Diagrama de Pareto de Queixas de Clientes",
  ylab = "Número de Queixas",
  ylab2 = "Porcentagem Acumulada",
  col = RColorBrewer::brewer.pal(length(numero_de_queixas), "Paired") 
)
