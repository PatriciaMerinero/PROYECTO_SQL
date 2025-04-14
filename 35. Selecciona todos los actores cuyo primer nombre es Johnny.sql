--SELECCIONA TODOS LOS ACTORES CUYO NOMBRE ES JOHNNY

--utilizo ILIKE porque no se si estan en minúscula o mayúscula

SELECT CONCAT (a."first_name", ' ', a."last_name") AS "ACTOR"
FROM "actor" AS a
WHERE a."first_name" ILIKE 'johnny'


--si se como estan escritos los nombres puedo utilizar =

SELECT CONCAT (a."first_name", ' ', a."last_name") AS "ACTOR"
FROM "actor" AS a
WHERE a."first_name"='JOHNNY'