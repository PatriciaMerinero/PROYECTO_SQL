--CREA UNA TABLA TEMPORAL LLAMADA "PELÍCULAS_ALQUILADAS" QUE ALMACENE LAS PELÍCULAS QUE HAN SIDO ALQUILADAS AL MENOS 10 VECES


--1ºcreo tabla temporal

CREATE TEMP TABLE "PELÍCULAS_ALQUILADAS"AS
SELECT f."title"AS "PELÍCULA",
     COUNT(r."rental_id") AS "CONTEO ALQUILERES"
FROM "film"AS f
INNER JOIN "inventory" AS i
ON f."film_id"= i."film_id"
INNER JOIN "rental"AS r
ON i."inventory_id"= r."inventory_id"
GROUP BY f."title"
HAVING COUNT (r."rental_id") >= 10

--2ºhago consulta

SELECT"PELÍCULA",
	  "CONTEO ALQUILERES"
FROM "PELÍCULAS_ALQUILADAS"

