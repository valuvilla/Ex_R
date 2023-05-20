library(tidyr)
library(dplyr)
library(moments)
df <- read.csv("neonatos.csv", sep=",", dec=".")

# eliminar los filas con cigarros =0
df <- df[df$cigarros != 0,]
# Recta de regresion inversa de apgar5 sobre cigarros
recta_inversa_apgar5_cigarros <- lm(apgar5 ~ I(1/cigarros), data = df)
summary(recta_inversa_apgar5_cigarros)

# Puntuacion de apgar5 para 3 cigarros
predict.lm(recta_inversa_apgar5_cigarros, newdata = list(cigarros = 3))

