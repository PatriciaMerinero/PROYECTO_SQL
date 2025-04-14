--ENCUENTRA TODOS LOS ALQUILERES Y LOS NOMBRES DE LOS CLIENTES QUE LOS REALIZARON

 SELECT r."rental_id"AS "ID ALQUILER",
 		CONCAT(c."first_name",' ',c."last_name")AS "CLIENTE QUE ALQUILA",
 		r."rental_date" AS "FECHA Y HORA DE ALQUILER"
 FROM "rental"AS r
 INNER JOIN "customer" AS c
 ON r."customer_id"= c."customer_id"
 
 