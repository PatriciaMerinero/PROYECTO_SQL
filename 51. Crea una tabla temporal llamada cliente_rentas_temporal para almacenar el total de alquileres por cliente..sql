--CREA UNA TABLA TEMPORAL LLAMADA "CLIENTE_RENTAS_TEMPORAL" PARA ALMACENAR EL TOTAL DE ALQUILERES POR CLIENTES


--1ºcreo tabla temporal

CREATE TEMP TABLE "CLIENTE_RENTAS_TEMPORAL" AS
SELECT CONCAT(c."first_name", ' ', "last_name")AS "CLIENTE",
	   COUNT (r."rental_id") AS "CONTEO ALQUILERES" 
FROM "rental"AS r
INNER JOIN "customer"AS c
ON r."customer_id"= c."customer_id"
GROUP BY c."first_name",
		 c."last_name"
		 
--2º hago consulta
		 
SELECT "CLIENTE",
		"CONTEO ALQUILERES"
FROM "CLIENTE_RENTAS_TEMPORAL"
