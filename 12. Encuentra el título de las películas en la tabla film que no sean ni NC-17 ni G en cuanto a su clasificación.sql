--ENCUENTRA EL TITULO DE LAS PELÍCULAS EN LA TABLA FILM QUE NO SEAN NI NC-17 NI G EN CUANTO A SU CLASIFICACIÓN



SELECT f."title" AS "TÍTULO PELÍCULA",
       f."rating" AS "CLASIFICACIÓN"
FROM "film" AS f
WHERE f."rating" <> 'NC-17' AND f."rating" <> 'G'
ORDER BY "title"



--con subconsulta

SELECT f."title" AS "TÍTULO PELÍCULA",
	   f."rating" AS "CLASIFICACIÓN"
FROM "film" AS f 
WHERE NOT EXISTS(SELECT 1
				 FROM "film" AS fs
				 WHERE fs."rating" IN ('NC-17', 'G')
				 AND fs. "rating"= f."rating")
ORDER BY f."title"
