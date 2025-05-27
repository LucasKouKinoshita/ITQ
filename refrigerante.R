rm(list=ls())
graphics.off()
library(ggplot2)

dados_refrigerantes_df <- read.csv("D:/github/ITQ/dados_refrigerantes.txt", 
                              header = TRUE, 
                              sep = ",", 
                              dec = ".", 
                              stringsAsFactors = FALSE,
                              check.names = FALSE)

qtd_refrigerantes <- dados_refrigerantes_df$Quantidade[]

hist(qtd_refrigerantes,
     main = "Quantidade de refrigerante",
     xlab = "Quantidade (litros)",       
     ylab = "Frequência",              
     col = "skyblue",                 
     border = "black",    
     las = 1,
     ylim = c(0,20))                          