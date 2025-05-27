rm(list=ls())
graphics.off()
library(ggplot2)

dados_escolas <- data.frame(
  Escola = c(
    "Akron", "Alabama State", "American", "Arizona", "Arizona State", "Binghamton",
    "Boston College", "Butler", "California", "Cal. State-Northridge",
    "Chattanooga", "Clemson", "Cleveland State", "Connecticut", "Dayton", "Duke",
    "East Tennesse State", "Florida State", "Gonzaga", "Illinois", "Kansas",
    "Louisiana State", "Louisville", "Marquette", "Maryland", "Memphis", "Michigan",
    "Michigan State", "Minnesota", "Mississippi State", "Missouri", "Morehead State",
    "Morgan State", "North Carolina", "North Dakota State", "Northern Iowa",
    "Ohio State", "Oklahoma", "Oklahoma State", "Pittsburgh", "Portland State",
    "Purdue", "Radford", "Siena", "Stephen F. Austin", "Syracuse", "Temple",
    "Tennessee", "Texas", "Texas A & M", "UCLA", "Utah", "Utah State", "Villanova",
    "Virginia Commonwealth", "Wake Forest", "Washington", "West Virginia",
    "Western Kentucky", "Wisconsin"
  ),
  Salarios = c(
    331.15, 125.22, 284.15, 2300.00, 1257.70, 75.68, 2219.59, 396.60, 1606.00, 241.51,
    153.00, 1388.00, 317.26, 1600.00, 541.89, 4095.00, 209.50, 1553.50, 899.30, 1522.44,
    3675.66, 1510.57, 4073.09, 410.20, 1996.33, 815.00, 1629.35, 3083.30, 1861.00,
    1274.58, 1550.90, 182.50, 182.70, 1563.94, 123.10, 454.00, 2662.00, 1718.48,
    1800.00, 1091.69, 120.01, 1098.12, 246.50, 417.08, 166.31, 1155.09, 700.00,
    1947.38, 2150.00, 1301.25, 2040.00, 850.00, 482.18, 1983.77, 401.00, 793.90,
    1315.12, 1716.00, 355.50, 1639.50
  ),
  Receitas= c(
    424.88, 686.34, 1626.65, 17524.36, 6668.54, 1588.70, 5688.91, 1729.76, 5793.22,
    1206.38, 1417.04, 7552.67, 1952.83, 8379.90, 9091.52, 11842.00, 1424.67, 5693.82,
    4075.75, 14507.34, 15737.15, 6034.18, 25494.90, 13446.40, 10793.86, 6549.42,
    7978.07, 15592.50, 12956.39, 6197.70, 8857.83, 1174.19, 1361.28, 19852.54,
    954.93, 1901.81, 16115.42, 6753.15, 11052.29, 11100.03, 1027.83, 7488.46,
    1124.30, 1922.95, 993.60, 16817.12, 3738.92, 12576.72, 14770.28, 8984.82,
    11775.92, 6022.42, 3115.56, 7155.81, 2772.15, 8758.85, 9269.22, 9632.19,
    2048.62, 14900.72
  )
)

ggplot(dados_escolas, aes(x = Receitas, y = Salarios)) +
  geom_point(aes(color = Escola), show.legend = TRUE, alpha = 1, size = 1.5) + 
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  labs(
    title = "Gráfico de Dispersão: Receitas vs. Salário total",
    x = "Salário Total (em $000)",
    y = "Receitas (em $000)"
  )
