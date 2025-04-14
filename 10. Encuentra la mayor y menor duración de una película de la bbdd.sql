--ENCUENTRA LA MAYOR Y MENOR DURACIÓN DE UNA PELICULA DE LA BBDD


--DURACIÓN MIN Y MAX DE LAS PELÍCULAS
SELECT f."title" AS "PELÍCULA",
		MIN(f."length") AS "MIN DURACIÓN",
		MAX(f."length") AS "MAX DURACIÓN"
FROM "film" AS f 
GROUP BY f. "title"


--DURACIÓN MIN Y MAX DE 1 PELÍCULA EN BBDD

SELECT f."title" AS "PELÍCULA",
		MIN("length") AS "MIN DURACIÓN",
		MAX("length") AS "MAX DURACIÓN"
FROM "film" AS f 
GROUP BY f."title"
LIMIT 1


--DURACIÓN MIN Y MAX DE LAS PELÍCULAS

SELECT  MIN (f."length") AS "DURACIÓN MÍNIMA",
    	MAX (f."length") AS "DURACIÓN MÁXIMA"
FROM "film" AS f 