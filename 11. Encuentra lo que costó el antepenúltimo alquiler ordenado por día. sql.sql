--ENCUENTRA LO QUE COSTO EL ANTEPENÚLTIMO ALQUILER ORDENADO POR DÍA

--solo dato

SELECT  p."amount" AS "PRECIO ALQUILER"
FROM "rental" AS r
INNER JOIN "payment" AS p 
ON r."rental_id" = p."rental_id"
ORDER BY r."rental_date" DESC
OFFSET 2
LIMIT 1




--mas completo

SELECT  f. "title" AS "PELÍCULA",
		p. "amount" AS "PRECIO ALQUILER",
		r. "rental_date" AS "FECHA DEL ALQUILER"
FROM "rental" AS r
INNER JOIN "payment" AS p
ON r."rental_id"= p. "rental_id"
INNER JOIN "inventory" AS i
ON r."inventory_id"= i. "inventory_id"
INNER JOIN "film" AS f
ON f. "film_id"= i. "film_id"
ORDER BY r. "rental_date" DESC 
OFFSET 2
LIMIT 1