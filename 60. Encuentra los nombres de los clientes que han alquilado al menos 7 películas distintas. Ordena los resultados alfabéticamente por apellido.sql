--ENCUENTRA LOS NOMBRES DE LOS CLIENTES QUE HAN ALQUILADO AL MENOS 7 PELÍCULAS DISTINTAS. ORDENA LOS RESULTADOS ALFABÉTICAMENTE POR APELLIDO




--conteo de alquileres por cliente

SELECT CONCAT (c."first_name", ' ', c."last_name") AS "CLIENTE",
	   COUNT ("film_id") AS "CONTEO ALQUILERES"	
FROM "customer" AS c
INNER JOIN "rental" AS r
ON c."customer_id"= r."customer_id"
INNER JOIN "inventory" AS i
ON r."inventory_id"= i. "inventory_id"
GROUP BY "CLIENTE" 

--que no se repitan las películas alquiladas DISTINCT

SELECT CONCAT (c."first_name", ' ', c."last_name") AS "CLIENTE",
	   COUNT (DISTINCT "film_id") AS "CONTEO ALQUILERES"	
FROM "customer" AS c
INNER JOIN "rental" AS r
ON c."customer_id"= r."customer_id"
INNER JOIN "inventory" AS i
ON r."inventory_id"= i. "inventory_id"
GROUP BY "CLIENTE" 

--condición de haber alquilado al menos 7 películas HAVING datos agrupados. No puedo utilizar CLIENTE ya que quiero ordenar por apellido

SELECT CONCAT (c."first_name", ' ', c."last_name") AS "CLIENTE",
	   COUNT (DISTINCT "film_id") AS "CONTEO ALQUILERES"	
FROM "customer" AS c
INNER JOIN "rental" AS r
ON c."customer_id"= r."customer_id"
INNER JOIN "inventory" AS i
ON r."inventory_id"= i. "inventory_id"
GROUP BY c."first_name", c."last_name" 
HAVING COUNT(DISTINCT i."film_id") >= 7
ORDER BY c."last_name"


--diferencias de rental_id y film_id

SELECT CONCAT(c."first_name", ' ', c."last_name") AS "CLIENTE",
       COUNT(r."rental_id") AS "TOTAL ALQUILERES",
       COUNT(DISTINCT i."film_id") AS "PELÍCULAS DISTINTAS"
FROM "customer" AS c
INNER JOIN "rental" AS r 
ON c."customer_id" = r."customer_id"
INNER JOIN "inventory" AS i 
ON r."inventory_id" = i."inventory_id"
GROUP BY c."first_name", c."last_name"
HAVING COUNT(DISTINCT i."film_id") >= 7
ORDER BY c."last_name"



