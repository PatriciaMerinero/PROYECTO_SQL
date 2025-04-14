--ENCUENTRA EL TITULO DE TODAS LAS PELÍCULAS QUE TENGAN UNA DURACIÓN MAYOR A 180 MIN




SELECT f."title" AS "TÍTULO PELÍCULA",
	   f."length" AS "DURACIÓN"
FROM "film" AS f
WHERE f."length"> '180'




--duración de las películas

SELECT f."length" AS "DURACIÓN",
	   f."title" AS "TÍTULO PELÍCULA"
FROM "film" AS f 