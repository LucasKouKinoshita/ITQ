rm(list=ls())
graphics.off()
library(ggplot2)

dados_lampadas_df <- read.csv("D:/github/ITQ/dados_lampadas.txt", 
                             header = TRUE, 
                             sep = ",", 
                             dec = ".", 
                             stringsAsFactors = FALSE,
                             check.names = FALSE)

vida_util_fabricante_A <- dados_lampadas_df$Vida_Util[dados_lampadas_df$Fabricante == 1]
vida_util_fabricante_B <- dados_lampadas_df$Vida_Util[dados_lampadas_df$Fabricante == 2]

par(mfrow = c(1, 2)) # sub plot 1x2

hist(vida_util_fabricante_A,
     main = "Vida Útil - Fabricante A",
     xlab = "Vida Útil (horas)",       
     ylab = "Frequência",              
     col = "skyblue",                 
     border = "black",    
     las = 1,
     ylim = c(0,12))               
hist(vida_util_fabricante_B,
     main = "Vida Útil - Fabricante B",
     xlab = "Vida Útil (horas)",      
     ylab = "Frequência",            
     col = "lightcoral",             
     border = "black",               
     las = 1,
     ylim = c(0,12))    