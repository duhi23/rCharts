#####################################
###### Ejemplos Paquete rCharts #####
######   Diego Paul Huaraca S   #####
#####################################

## Instalación 
install.packages('devtools', dependencies=TRUE)
library(devtools)
install_github('rCharts', 'ramnathv')
library(rCharts)

## Paquete rCharts / Funciones
ls("package:rCharts")

# Ejemplo 1
# Usando la data iris / eliminamos el signo . de los nombres de la base (Dispersion)
names(iris) <- gsub("\\.", "", names(iris))
colnames(iris)
rPlot(SepalLength ~ SepalWidth | Species, data = iris, color = 'Species', type = 'point')

## Histogramas
hair_eye = as.data.frame(HairEyeColor)
rPlot(Freq ~ Hair | Eye, color = 'Eye', data = hair_eye, type = 'bar')


r1 <- rPlot(mpg ~ wt | am + vs, data = mtcars, type = "point", color = "gear")
r1$print("chart1")



data(economics, package = "ggplot2")
econ <- transform(economics, date = as.character(date))
m1 <- mPlot(x = "date", y = c("psavert", "uempmed"), type = "Line", data = econ)
m1$set(pointSize = 0, lineWidth = 2)
m1
m1$print("chart2")
m1$save('index.html', standalone=TRUE)
servr::httd()


m1$show('iframe', cdn=TRUE)

m1$publish('Mi primer grafico')

p5 <- nPlot(~ carb, data = mtcars, type='pieChart')
p5$chart(donut=TRUE)
p5




