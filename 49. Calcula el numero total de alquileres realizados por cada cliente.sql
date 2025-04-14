--CALCULA EL NUMERO TOTAL DE ALQUILERES REALIZADOS POR CADA CLIENTE



SELECT CONCAT (c."first_name",' ', c."last_name")AS "CLIENTE",
	   COUNT (r."rental_id") AS "CONTEO ALQUILERES"
FROM "rental"AS r
INNER JOIN "customer"AS c
ON r."customer_id"= c."customer_id"
GROUP BY c."first_name",
		 c."last_name"

		 
