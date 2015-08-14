#####################################
###### Ejemplos Paquete rCharts #####
######   Diego Paul Huaraca S   #####
#####################################

## Instalación 
install.packages('devtools', dependencies=TRUE)
library(devtools)
install_github('rCharts', 'ramnathv')
library(rCharts)
library(readxl)

## Paquete rCharts / Funciones
ls("package:rCharts")

data <- read_excel("proyeccion.xlsx", sheet=1, col_names = TRUE)
data <- round(data[c("2015", "2020")]/1000)
rownames(data) <- c("Costa", "Sierra", "Amazonia", "Insular", "No delimitado")
class(data)
data

figu <- rCharts:::Highcharts$new()
figu$chart(type = "line")
figu$title(text = "Proyección Poblacional por regiones")
figu$xAxis(categories = rownames(data))
figu$yAxis(title = list(text = "Habitantes en miles"))
figu$data(data)
figu
figu$save('index.html', standalone=TRUE)
# Publicacion
figu$publish('Proyección Poblacional')



data(economics, package = "ggplot2")
econ <- transform(economics, date = as.character(date))
m1 <- mPlot(x = "date", y = c("psavert", "uempmed"), type = "Line", data = econ)
m1$set(pointSize = 0, lineWidth = 1)
m1$print("chart2")
m1




m1
m1$print("chart2")
m1$save('index.html', standalone=TRUE)
servr::httd()


m1$show('iframe', cdn=TRUE)

m1$publish('Mi primer grafico')

p5 <- nPlot(~ carb, data = mtcars, type='pieChart')
p5$chart(donut=TRUE)
p5



hair_eye_male <- subset(as.data.frame(HairEyeColor), Sex == "Male")
n1 <- nPlot(Freq ~ Hair, group = "Eye", data = hair_eye_male, type = "multiBarChart")
n1$print("chart3")


