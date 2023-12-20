library(readX2)
file.choose()
ruta_excel <- "C:\\Users\\Alumno\\Desktop\\bibliografia tesis\\3.xlsx"
excel_sheets(ruta_excel)
read_xlsx(ruta_excel)
names(X2)
str(X2)
X2$Ahorro<- as.factor(X3$Ahorro)
levels(X2$Ahorro)

----- # 1. Calcular el Modelo-----------------

log5= glm(Ahorro~ Ingreso + Fintech, data = X2, family = binomial)

---- #2. Identificar la Ecuaci?n---------
summary(log5)

-----# 3.Ver Significancia de variables independientes------


------# 4.Ver que nos indica los coeficientes---------
exp(log5$coefficients)

------# 5. Ver las Probabilidades------
log5$fitted.values

-------#6. Clasificar en Base a la probabilidad------
X2$Prediccion <- as.numeric(log5$fitted.values>=0.5)

---------#7. Borrar errores ----------
rm("data")