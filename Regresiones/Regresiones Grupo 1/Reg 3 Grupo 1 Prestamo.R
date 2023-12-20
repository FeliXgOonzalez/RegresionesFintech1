library(readX1)
file.choose()
ruta_excel <- "C:\\Users\\Alumno\\Desktop\\bibliografia tesis\\2.xlsx"
excel_sheets(ruta_excel)
read_xlsx(ruta_excel)
names(X1)
str(X1)
X1$Prestamo<- as.factor(X1$Prestamo)
levels(X1$Prestamo)

----- # 1. Calcular el Modelo-----------------

log3= glm(Prestamo~ Ingreso + Fintech, data = X1, family = binomial)

---- #2. Identificar la Ecuaci?n---------
summary(log3)

-----# 3.Ver Significancia de variables independientes------


------# 4.Ver que nos indica los coeficientes---------
exp(log3$coefficients)

------# 5. Ver las Probabilidades------
log3$fitted.values

-------#6. Clasificar en Base a la probabilidad------
X1$Prediccion <- as.numeric(log3$fitted.values>=0.5)

---------#7. Borrar errores ----------
rm("data")