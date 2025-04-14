--SELECCIONA LAS 5 PRIMERAS PELICULAS DE LA TABLA FILM

SELECT "title" AS "PELICULA"
FROM "film" AS f
LIMIT 5

--mas completo con id

SELECT "film_id" AS "ID PELÍCULA",
	   "title" AS "TITULO PELÍCULA"
FROM "film" AS f
LIMIT 5