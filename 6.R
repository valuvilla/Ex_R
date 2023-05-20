library(tidyr)
library(dplyr)
library(moments)
df <- read.csv("neonatos.csv", sep=",", dec=".")
nrow(df)
# Buscar todos los datos atipico en la distribucion del peso con un aphgar 1 mayor que 4
df_atipicos <- df[df$apgar1 >4,]

# Buscar datos atipicos en el peso del filtrado


library(ggplot2)
ggplot(df_atipicos, aes(x = peso)) +
    geom_boxplot(fill = "steelblue") +
    labs(title = "Distribución del número de llamadas", x = "Número de llamadas")
    # Mostar los datos atipicos
    geom_point(data = df_atipicos, aes(x = peso, y = 0), color = "red", size = 3)
# Buscar datos atipicos en el peso del filtrado

