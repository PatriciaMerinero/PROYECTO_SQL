--OBTEN TODAS LAS PELÍCULAS QUE TENEMOS Y TODOS LOS REGISTROS DE ALQUILER


SELECT f."title" AS "PELÍCULA",
	   r."rental_id" AS "ID ALQUILER",
	   r."rental_date"AS "FECHA Y HORA ALQUILER",
	   r."inventory_id" AS "ID INVENTARIO",
	   r."customer_id" AS "ID CLIENTE",
	   r."return_date" AS "FECHA Y HORA DEVOLUCIÓN ALQUILER",
	   r."staff_id" AS "ID PERSONAL",
	   r."last_update" AS "ÚLTIMA ACTUALIZACIÓN"
FROM "film" AS f 
LEFT JOIN "inventory" AS i
ON f."film_id"= i. "film_id"
LEFT JOIN "rental" AS r
ON i."inventory_id"= r."inventory_id"



--podríamos seleccionar todos los registros de rental r.*

SELECT f."title" AS "PELÍCULA",
	   r.*
FROM "film" AS f 
LEFT JOIN "inventory" AS i
ON f."film_id"= i. "film_id"
LEFT JOIN "rental" AS r
ON i."inventory_id"= r."inventory_id"