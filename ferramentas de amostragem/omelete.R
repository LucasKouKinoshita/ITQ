rm(list=ls())
graphics.off()
library(qcc)

efeito_principal <- "Baixa Qualidade do Omelete"

lista_de_causas <- list(
  `Ingredientes` = c(
    "Ovos mal quebrados",
    "Ovos mal batidos",
    "Ovos mal temperados"
  ),
  `Pré-aquecimento` = c(
   "Frigideira aquecida em fogo \nbaixo/ alto demais",
   "Adição insuficiente de manteiga/óleo"
  ),
  `Despejar dos ovos na frigideira` = c(
   "Ovos despejados na frigideira \nenquanto fria",
   "Ovos despejados fora da frigideira"
  ),
  `Cozinhar` = c(
    "Tentativa de mexer no omelete \n antes das bordas firmarem",
    "Cozinhado em fogo alto/baixo"
  ),
  `Mexer e dobrar` = c(
    "Uso de ferramenta inadequada \ndiferente de espátula)",
    "Mexida insuficiente, \nlíquido cru não atingiu as bordas",
    "Omelete dobrado de forma inadequada"
  ),
  `Término do cozimento` = c(
    "Omelete não cozido por inteiro",
    "Tempo insuficiente"
  ),
  `Servir` = c(
    "Omelete demorou a ser servido",
    "Omelete não foi servido"
  )
)

cause.and.effect(
  cause = lista_de_causas,
  title = efeito_principal,
  effect = "Qualidade Insatisfatória", 
  cex = c(1, 0.8, 0.7), 
  font = c(2, 3, 1)    
)