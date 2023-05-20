library(tidyr)
library(dplyr)
library(moments)
df <- read.csv("neonatos.csv", sep=",", dec=".")


# Filtar todos los apgar1 menor o igual a 3
df_apgar1_menor_igual_3 <- df[df$apgar1 <= 3,]
nrow(df_apgar1_menor_igual_3)

# porcentaje de hombres en el filtrado
porcentaje_hombres <- nrow(df_apgar1_menor_igual_3[df_apgar1_menor_igual_3$sexo == "hombre",]) / nrow(df_apgar1_menor_igual_3)
porcentaje_hombres*100

nrow(df_apgar1_menor_igual_3[df_apgar1_menor_igual_3$sexo == "hombre",])
