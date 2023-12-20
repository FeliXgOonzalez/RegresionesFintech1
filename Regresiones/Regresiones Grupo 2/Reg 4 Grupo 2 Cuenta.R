library(readX2)
file.choose()
ruta_excel <- "C:\\Users\\Alumno\\Desktop\\bibliografia tesis\\3.xlsx"
excel_sheets(ruta_excel)
read_xlsx(ruta_excel)
names(X2)
str(X2)
X2$Cuenta<- as.factor(X2$Cuenta)
levels(X2$Cuenta)

----- # 1. Calcular el Modelo-----------------

log4= glm(Cuenta~ Ingreso + Fintech, data = X2, family = binomial)

---- #2. Identificar la Ecuaci?n---------
summary(log4)

-----# 3.Ver Significancia de variables independientes------


------# 4.Ver que nos indica los coeficientes---------
exp(log4$coefficients)

------# 5. Ver las Probabilidades------
log4$fitted.values

-------#6. Clasificar en Base a la probabilidad------
X2$Prediccion <- as.numeric(log4$fitted.values>=0.5)

---------#7. Borrar errores ----------
rm("data")