library(readX3)
file.choose()
ruta_excel <- "C:\\Users\\Alumno\\Desktop\\bibliografia tesis\\4.xlsx"
excel_sheets(ruta_excel)
read_xlsx(ruta_excel)
names(X3)
str(X3)
X3$Ahorro<- as.factor(X3$Ahorro)
levels(X3$Ahorro)

----- # 1. Calcular el Modelo-----------------

log8= glm(Ahorro~ Ingreso + Fintech, data = X3, family = binomial)

---- #2. Identificar la Ecuaci?n---------
summary(log8)

-----# 3.Ver Significancia de variables independientes------


------# 4.Ver que nos indica los coeficientes---------
exp(log8$coefficients)

------# 5. Ver las Probabilidades------
log8$fitted.values

-------#6. Clasificar en Base a la probabilidad------
X3$Prediccion <- as.numeric(log8$fitted.values>=0.5)

---------#7. Borrar errores ---------
rm("data")