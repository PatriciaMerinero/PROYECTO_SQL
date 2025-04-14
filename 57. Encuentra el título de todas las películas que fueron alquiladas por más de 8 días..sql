--ENCUENTRA EL TITULO DE TODAS LAS PELICULAS QUE FUERON ALQUILADAS POR MAS DE 8 DIAS




--Convierto fechas con ::date (en PostgreSQL )

SELECT f."title"AS "PELÍCULA" ,
	    (r."return_date"::date -r."rental_date"::date) AS "DÍAS ALQUILADO"
FROM "film" AS f
INNER JOIN "inventory" AS i
ON f."film_id"= i. "film_id"
INNER JOIN "rental"AS r
ON i."inventory_id"= r."inventory_id"
WHERE (r."return_date"::date -r."rental_date"::date)>8




SELECT f."title"AS "PELÍCULA" ,
	  (r."return_date"::date -r."rental_date"::date) AS "DÍAS ALQUILADO"
FROM "film" AS f
INNER JOIN "inventory" AS i
ON f."film_id"= i. "film_id"
INNER JOIN "rental"AS r
ON i."inventory_id"= r."inventory_id"
