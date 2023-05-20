library(tidyr)
library(dplyr)
library(knitr)

meses <- c(seq(10,40,5))
interes <-c(15.2, 14.3, 12.8, 10.9, 9.2, 8.6, 7.9)

df <- data.frame(meses, interes)
df


# Recta de regresion
recta_interes_meses <- lm(interes ~ meses, data=df)
summary(recta_interes_meses)

recta_meses_interes <- lm(meses ~ interes, data=df)
summary(recta_meses_interes)
