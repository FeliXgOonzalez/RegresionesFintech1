library(readX3)
file.choose()
ruta_excel <- "C:\\Users\\Alumno\\Desktop\\bibliografia tesis\\4.xlsx"
excel_sheets(ruta_excel)
read_xlsx(ruta_excel)
names(X3)
str(X3)
X3$Cuenta<- as.factor(X3$Cuenta)
levels(X3$Cuenta)

----- # 1. Calcular el Modelo-----------------

log7= glm(Cuenta~ Ingreso + Fintech, data = X3, family = binomial)

---- #2. Identificar la Ecuaci?n---------
summary(log7)

-----# 3.Ver Significancia de variables independientes------


------# 4.Ver que nos indica los coeficientes---------
exp(log7$coefficients)

------# 5. Ver las Probabilidades------
log7$fitted.values

-------#6. Clasificar en Base a la probabilidad------
X3$Prediccion <- as.numeric(log7$fitted.values>=0.5)

---------#7. Borrar errores ----------
rm("data")