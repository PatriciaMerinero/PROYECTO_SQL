--AGRUPA LOS ACTORES POR SU NOMBRE Y CUENTA CUANTOS ACTORES TIENEN EL MISMO NOMBRE ¿CUAL ES EL NOMBRE MAS REPETIDO?


SELECT "first_name" AS "NOMBRE ACTOR",
		COUNT(*) "CONTEO DE NOMBRES IGUALES"
FROM "actor" AS a
GROUP BY "first_name"
ORDER BY COUNT(*)DESC 


--para que me saque el mas repetido, en este caso tenemos 3, limitamos a 3

SELECT "first_name" AS "NOMBRE ACTOR",
		COUNT(*) "CONTEO DE NOMBRES IGUALES"
FROM "actor" AS a
GROUP BY "first_name"
ORDER BY COUNT(*)DESC 
LIMIT 3