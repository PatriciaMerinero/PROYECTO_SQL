--MUESTRA TODOS LOS CLIENTES Y SUS ALQUILERES SI EXISTEN, INCLUYENDO AQUELLOS QUE NO TIENEN ALQUILERES



SELECT r."rental_id"AS "ID ALQUILER",
 		CONCAT(c."first_name",' ',c."last_name")AS "CLIENTE QUE ALQUILA",
 		r."rental_date" AS "FECHA Y HORA DE ALQUILER"
 FROM "customer"AS c
 LEFT JOIN RENTAL AS r
 ON r."customer_id"= c."customer_id"
 
 
 --clientes que no tienen alquiler, NINGUNO
 
 SELECT r."rental_id"AS "ID ALQUILER",
 		CONCAT(c."first_name",' ',c."last_name")AS "CLIENTE QUE ALQUILA",
 		r."rental_date" AS "FECHA Y HORA DE ALQUILER"
 FROM "customer"AS c
 LEFT JOIN RENTAL AS r
 ON r."customer_id"= c."customer_id"
 WHERE r."rental_id" IS NULL 
 
 