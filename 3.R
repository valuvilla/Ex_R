library(tidyr)
library(dplyr)
library(knitr)


method_A <- data.frame(A = c(33,12,25,19,28,31,17,4))
method_B <- data.frame(B = c(12,13,8,3,15,12,15,17))

# estadisticos de cada metodo
mean(method_A$A)
# desviacion estandar
# Desviación típica
print(paste("Desviación típica: ", sd(method_A$A)*sqrt((8-1)/8)))
coef1 = sd(method_A$A)/mean(method_A$A)
coef1

mean(method_B$B)
sd(method_B$B)
# Desviación típica
print(paste("Desviación típica: ", sd(method_B$B)*sqrt((8-1)/8)))
coef2 = sd(method_B$B)/mean(method_B$B)
coef2

# media representativa
