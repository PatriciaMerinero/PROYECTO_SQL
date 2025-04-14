--MUESTRA LOS 10 CLIENTES CON MAYOR VALOR DE ID


SELECT c."customer_id" AS "ID DEL CLIENTE"
FROM "customer" AS c
ORDER BY c."customer_id" DESC
LIMIT 10


--ampliamos información


SELECT c."customer_id" AS "ID DEL CLIENTE",
	   CONCAT (c."first_name", ' ', c."last_name")AS "CLIENTE"
FROM "customer" AS c
ORDER BY c."customer_id" DESC
LIMIT 10