library(tidyr)
library(dplyr)
df <- read.csv("neonatos.csv", sep=",", dec=".")

# Filtrar por madres no fumadoras durante el embarazo
df_no_fumadoras <- df[df$tabaco == "No",]
df_no_fumadoras
# Calcular decil 7 del peso
decil_7_peso <- quantile(df_no_fumadoras$peso, probs = 0.7)
decil_7_peso

# Mostras mas decimales
options(digits=10)
