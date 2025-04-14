--ENCUENTRA LOS NOMBRES DE LAS PELÍCULAS QUE TIENEN LA MISMA DURACIÓN QUE LA PELÍCULA CON EL TITULO DANCING FEVER. ORDENA LOS RESULTADOS ALFABÉTICAMENTE POR TÍTULO DE PELÍCULA


-- No se como esta escrito ILIKE

SELECT f."title" AS "PELÍCULA",
	   f. "length" AS "DURACIÓN"
FROM "film" AS f
WHERE f. "length"=(SELECT f. "length"
					FROM "film" AS f
					WHERE f."title"ILIKE'Dancing Fever')
ORDER BY f."title"




--convierto a mayusculas UPPER, se podría hacer en minusculas con LOWER

SELECT f."title" AS "PELÍCULA",
       f."length" AS "DURACIÓN"
FROM "film" AS f
WHERE f."length" = (SELECT "length"
    				FROM "film"
    				WHERE 	UPPER("title") = UPPER('Dancing Fever'))
ORDER BY f."title"
