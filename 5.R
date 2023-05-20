
library(tidyr)
library(dplyr)
df <- read.csv("neonatos.csv", sep=",", dec=".")


# Recta de regresion entre apgar1 y apgar5 con madres no fumadoras antes del embarazo

# filtrar de df para quedars con madres no fumadoras antes del embarazo
df_no_fumadoras <- df[df$tabaco.antes == "No",]
df_no_fumadoras

library(dplyr)
library(tidyr)
library(purrr)
library(broom)
library(kableExtra)
# Construimos un data frame con el ajuste de los modelos.
modelos <- tibble(
    Lineal = list(lm(apgar1 ~ apgar5, data = df_no_fumadoras)),
    Cuadratico = list(lm(apgar1 ~ apgar5 + I(apgar5^2), data = df_no_fumadoras)),
    Exponencial = list(lm(log(apgar1) ~ apgar5, data = df_no_fumadoras)),
    Logaritmico = list(lm(apgar1 ~ log(apgar5), data = df_no_fumadoras)),
    Potencial = list(lm(log(apgar1) ~ log(apgar5), data = df_no_fumadoras)),
) %>%
 pivot_longer(everything(), names_to = "Tipo_Modelo", values_to = "Modelo")  %>% 
    # Obtenemos un resumen del ajuste de cada modelo en formato organizado (se obtiene una lista con los parámetros que describen el ajuste de cada modelo).
    mutate(Resumen = map(Modelo, glance)) %>% 
    # Desanidamos el resumen (se obtiene una columna para cada parámetro del resumen del ajuste de los modelos).
    unnest(Resumen)  %>% 
    # Ordenamos el data frame por el coeficiente de determinación.
    arrange(-r.squared)
modelos  %>%
    select(Tipo_Modelo, r.squared)  %>% 
    kable(col.names = c("Tipo de Modelo", "R²")) %>%
    kable_styling(full_width = FALSE)
