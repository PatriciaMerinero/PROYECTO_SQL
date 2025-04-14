--ENCUENTRA LOS 5 CLIENTES QUE MAS DINERO SE HAYAN GASTADO CON NOSOTROS

SELECT CONCAT(c."first_name",' ',c."last_name") AS "CLIENTE",
		SUM(p."amount") AS "SUMA FACTURAS"
FROM "customer" AS c
LEFT JOIN "payment" AS p 
ON c."customer_id"= p."customer_id"
GROUP BY "CLIENTE"
ORDER BY "SUMA FACTURAS"DESC
LIMIT 5


