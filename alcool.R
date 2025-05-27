rm(list=ls())
graphics.off()
library(ggplot2)

dados_cerveja_df <- read.csv("D:/github/ITQ/dados_cerveja.txt", 
                             header = TRUE, 
                             sep = ",", 
                             dec = ".", 
                             stringsAsFactors = FALSE,
                             check.names = FALSE)

vetor_alcool <- dados_cerveja_df[["%Álcool"]]
vetor_calorias <- dados_cerveja_df[["Calorias"]]
vetor_carboidratos <- dados_cerveja_df[["Carboidratos"]]

ggplot(dados_cerveja_df, aes(x = vetor_alcool, y = vetor_calorias)) +
  geom_point(aes(color = Marca), show.legend = FALSE, alpha = 1, size = 1.5) + 
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  labs(
    title = "Gráfico de Dispersão: % Álcool vs. Calorias",
    x = "Porcentagem de álcool",
    y = "Calorias"
  )


ggplot(dados_cerveja_df, aes(x = vetor_alcool, y = vetor_carboidratos)) +
  geom_point(aes(color = Marca), show.legend = FALSE, alpha = 1, size = 1.5) +
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  labs(
    title = "Gráfico de Dispersão: % Álcool vs. Carboidratos",
    x = "Porcentagem de álcool",
    y = "Carboidratos"
  )


ggplot(dados_cerveja_df, aes(x = vetor_calorias, y = vetor_carboidratos)) +
  geom_point(aes(color = Marca), show.legend = FALSE, alpha = 1, size = 1.5) + 
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  labs(
    title = "Gráfico de Dispersão: % Calorias vs. Carboidratos",
    x = "Calorias",
    y = "Carboidratos"
  )
