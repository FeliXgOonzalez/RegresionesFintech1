library(readX2)
file.choose()
ruta_excel <- "C:\\Users\\Alumno\\Desktop\\bibliografia tesis\\2.xlsx"
excel_sheets(ruta_excel)
read_xlsx(ruta_excel)
names(X1)
str(X1)
X1$Cuenta<- as.factor(X1$Cuenta)
levels(X1$Cuenta)

----- # 1. Calcular el Modelo-----------------

log1= glm(Cuenta~ Ingreso + Fintech, data = X1, family = binomial)

---- #2. Identificar la Ecuaci?n---------
summary(log1)

-----# 3.Ver Significancia de variables independientes------


------# 4.Ver que nos indica los coeficientes---------
exp(log1$coefficients)

------# 5. Ver las Probabilidades------
log1$fitted.values

-------#6. Clasificar en Base a la probabilidad------
X1$Prediccion <- as.numeric(log4$fitted.values>=0.5)

---------#7. Borrar errores ----------
rm("data")