#La concentración de nicotina de los cigarros de una marca A sigue una distribución normal de media 11 mg y desviación típica 3.5 mg, mientras que en otra marca B sigue una distribución normal de media 12 mg y desviación típica 2.1 mg. ¿Cuál de las siguientes afirmaciones es cierta?

#A N(11,3.5)
#B N(12,2.1)

# porcentaje de cigarros mayor a 14 mg en Marca A
pnorm(14, mean = 11, sd = 3.5, lower.tail = FALSE)
pnorm(10, mean = 11, sd = 3.5)

# porcentaje de cigarros mayor a 14 mg en Marca B
pnorm(14, mean = 12, sd = 2.1, lower.tail = FALSE)
pnorm(10, mean = 12, sd = 2.1)

# Tercer cuartil de la marca A
qnorm(0.75, mean = 11, sd = 3.5)

# Tercer cuartil de la marca B
qnorm(0.75, mean = 12, sd = 2.1)

# Mediana de la marca A
qnorm(0.5, mean = 11, sd = 3.5)

# Mediana de la marca B
qnorm(0.5, mean = 12, sd = 2.1)
