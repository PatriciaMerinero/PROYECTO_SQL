--SELECCIONA TODOS LOS NOMBRES DE LAS PELÍCULAS ÚNICOS

SELECT DISTINCT f."title" AS "TITULO PELÍCULA"
FROM "film" AS f
ORDER BY f."title" 


--Comprobación: cuantas veces se repitenlos títulos


SELECT f."title" AS "TITULO PELÍCULA",
		COUNT (f."title") AS "CANTIDAD"
FROM "film" AS f 
GROUP BY f."title" 
ORDER BY "CANTIDAD"
