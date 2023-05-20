#Arbol elemental con libreria  rpart
#Debe tener instaladas las librerias  data.table  ,  rpart  y  rpart.plot

#cargo las librerias que necesito
require("data.table")
require("rpart")
#require("rpart.plot")

#Aqui se debe poner la carpeta de la materia de SU computadora local
setwd("C:\\Users\\aldan\\OneDrive\\Documentos\\ITBA\\DataMining\\")  #Establezco el Working Directory
#C:\Users\aldan\OneDrive\Documentos\ITBA\DataMining\dm2023a
#X:\\gdrive\\ITBA2023a\\

#cargo el dataset
dataset  <- fread("./datasets/dataset_pequeno.csv")
str(dataset)
dtrain  <- dataset[ foto_mes==202107 ]  #defino donde voy a entrenar
dapply  <- dataset[ foto_mes==202109 ]  #defino donde voy a aplicar el modelo

#genero el modelo,  aqui se construye el arbol
modelo  <- rpart(formula=   "clase_ternaria ~ .",  #quiero predecir clase_ternaria a partir de el resto de las variables
                 data=      dtrain,  #los datos donde voy a entrenar
                 xval=      0,
                 cp=       -0.5,     #esto significa no limitar la complejidad de los splits
                 minsplit=  160,     #minima cantidad de registros para que se haga el split
                 minbucket= 2,     #tamaño minimo de una hoja
                 maxdepth=  12 )    #profundidad maxima del arbol


#grafico el arbol
#prp(modelo, extra=101, digits=-5, branch=1, type=4, varlen=0, faclen=0)


#aplico el modelo a los datos nuevos
prediccion  <- predict( object= modelo,
                        newdata= dapply,
                        type = "prob")

#prediccion es una matriz con TRES columnas, llamadas "BAJA+1", "BAJA+2"  y "CONTINUA"
#cada columna es el vector de probabilidades 

#agrego a dapply una columna nueva que es la probabilidad de BAJA+2
dapply[ , prob_baja2 := prediccion[, "BAJA+2"] ]

#solo le envio estimulo a los registros con probabilidad de BAJA+2 mayor  a  1/40
dapply[ , Predicted := as.numeric( prob_baja2 > 1/40 ) ]

#genero el archivo para Kaggle
#primero creo la carpeta donde va el experimento
dir.create( "./exp/" )
dir.create( "./exp/KA2001" )

fwrite( dapply[ , list(numero_de_cliente, Predicted) ], #solo los campos para Kaggle
        file= "./exp/KA2001/K101_01100.csv",
        sep=  "," )

#1
#2y 3 de 1/40 a 1/35
#4 de 1/55
#5 5000-1000-8 / 1/40
#6 5000-1000-5 / 1/40
#7 1000-200

#grid search, orden
#1 K101_011
#2 K101_012
#3 K101_013
#10 K101_0110
#50 K101_0150
#100 K101_01100



