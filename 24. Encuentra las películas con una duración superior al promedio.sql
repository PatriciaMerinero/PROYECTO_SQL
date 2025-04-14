--24.ENCUENTRA LAS PELÍCULAS CON UNA DURACIÓN SUPERIOR AL PROMEDIO

--calculo el promedio de duración con 2 decimales =115.27 min


SELECT ROUND (AVG ("length"),2) AS "PROMEDIO DURACIÓN"
FROM "film" AS f



--encuentro las películas con duración superior al promedio, subconsulta en WHERE para filtrar resultados


SELECT "title" AS "PELÍCULA",
		"length" AS "DURACIÓN PELICULA"
FROM "film" AS f
WHERE "length" >(SELECT AVG ("length") AS "PROMEDIO DURACIÓN"
		FROM "film" AS f)
