--OBTEN TODAS LAS COMBINACIONES POSIBLES DE TRABAJADORES CON LAS TIENDAS QUE TENEMOS


SELECT CONCAT(s."first_name",' ', s."last_name") AS "EMPLEADO",
		st."store_id" AS "TIENDA"
FROM "staff" AS s
CROSS JOIN "store" AS st




--compruebo cuantos empleados hay
SELECT  CONCAT(s."first_name",' ', s."last_name") AS "EMPLEADO"
FROM "staff" AS S 

--compruebo cuantas tiendas hay

SELECT "address_id" AS "TIENDA"
FROM "store" AS S 