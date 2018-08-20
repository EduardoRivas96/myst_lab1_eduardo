# -- Laboratorio 1

#Remover todo los objetos del environment
rm(list= ls())

# los 0s aceptadosantes de expresar una cifra en notación científica
options("scipen"=100, "digits"=4)

###Librerías a Utilizar
suppressMessages(library(plotly)) #Gráficas interactivas
suppressMessages(library(Quandl)) #Descargar Prescios
suppressMessages(library(PortfolioAnalytics))#
suppressMessages(library(ROI))
suppressMessages(library(kableExtra))
options(knitr.table.format = "html")  

# Cargar el token de QUANDL 
Quandl.api_key("PgavWKzHY7L8AwGkLY2e")

#Función para descargar precios
Bajar_precios <-function(Columns, Tickers, Fecha_In, Fecha_Fn)
  
  # Funcion para descargar N cantidad de activos desde QUANDL 
  # -- Dependencias: QUANDL 
# -- Columns : columnas a incluir : character : c("date", "adj_close", ... ) 
# -- Tickers : Tickers o claves de pizarra de los activos : character : "TSLA" 
# -- Fecha_In : Fecha Inicial : character : "2017-01-02" 
# -- Fecha_Fn : Fecha Final : character : "2017-08-02" 
  
  #Descargar Precios
  
  Datos <- Quandl.datable(code = "WIKI/PRICES", qopts.columns=Columns, ticker=Tickers, date.gte=Fecha_In, date.lte=Fecha_Fn)

return(Datos)

#Tikers de acciones y datos a solicitar a Quandl

tk<- c("TSLA", "AAPL", "SPY")
cs<-c("date", "adj_close")
