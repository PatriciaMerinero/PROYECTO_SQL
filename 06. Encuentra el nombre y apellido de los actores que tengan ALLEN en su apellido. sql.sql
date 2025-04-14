--ENCUENTRA EL NOMBRE Y APELLIDO DE LOS ACTORES QUE TENGAN "ALLEN" EN SU APELLIDO


SELECT CONCAT (a."first_name", ' ', a."last_name")AS "ACTOR"
FROM "actor" AS a
WHERE a."last_name" ILIKE '%allen%'