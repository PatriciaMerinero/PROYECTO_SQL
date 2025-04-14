--ENCUENTRA LAS CATEGORÍAS DE PELÍCULAS QUE TIENEN UN PROMEDIO DE DURACIÓN SUPERIOR A 110 MINUTOS Y MUESTRA EL NOMBRE DE LA CATEGORÍA JUNTO CON EL PROMEDIO DE DURACIÓN


SELECT c."name"  AS "NOMBRE CATEGORIA",
	  ROUND( AVG(f. "length"),2) AS "PROMEDIO DURACIÓN"
FROM "category" AS c
INNER JOIN "film_category" AS fc
ON c."category_id"= fc."category_id"
LEFT JOIN "film"AS f
ON fc."film_id"= f."film_id"
GROUP BY c."name"
HAVING AVG(f."length")> 110
ORDER BY "PROMEDIO DURACIÓN"


--CON SUBCONSULTA

SELECT "NOMBRE CATEGORIA",
		"PROMEDIO DURACIÓN"
FROM ( SELECT c."name"  AS "NOMBRE CATEGORIA",
	  		ROUND( AVG(f. "length"),2) AS "PROMEDIO DURACIÓN"
		 FROM "category" AS c
		 INNER JOIN "film_category"AS fc
		 ON c. "category_id" = fc. "category_id"
		 RIGHT JOIN "film" AS f
		 ON fc."film_id"= f. "film_id"
		 GROUP BY c. "name")
WHERE "PROMEDIO DURACIÓN"> 110
ORDER BY "PROMEDIO DURACIÓN" 

