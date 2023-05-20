library(tidyr)
library(dplyr)
library(moments)
df <- read.csv("neonatos.csv", sep=",", dec=".")

#Coeficientes de asimetria y apuntamiento de apgar5
coef_asimetria_apgar5 <- skewness(df$apgar5)
coef_apuntamiento_apgar5 <- kurtosis(df$apgar5)

# Que signidfica que el coeficiente de asimetria =  -0.1467479564

# Que signidfica que el coeficiente de apuntamiento =  2.989056
