--ENCUENTRA LA VARIABILIDAD DE LO QUE COSTARÍA REEMPLAZAR LAS PELÍCULAS


--Variabilidad redondeada a 2 decimales. En este caso, se calcula la DESVIACIÓN ESTÁNDAR (STDDEV), para entender cuanto se alejan de los varoles de la media. Cuanto mayor sea el valor, más variados son los costos de reemplazo.


SELECT ROUND (STDDEV (f."replacement_cost"),2) AS "VARIABILIDAD COSTO REEMPLAZO"
FROM "film" AS f



--Media, varianza y desviación (variabilidad) redondeadas a 2 decimales


SELECT  ROUND (AVG(f."replacement_cost"),2) AS "MEDIA",
        ROUND (VARIANCE(f."replacement_cost"),2) AS "VARIANZA",
        ROUND (STDDEV (f."replacement_cost"),2) AS "VARIABILIDAD COSTO REEMPLAZO"
FROM "film" AS f
