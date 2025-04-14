--ENCUENTRA EL TITULO DE TODAS LAS PELICULAS QUE SON PG-13 O TIENEN UNA DURACIÓN MAYOR A 3 HORAS EN LA TABLA FILM 60=1/ 120=2/ 180=3




SELECT f."title" AS "PELÍCULA",
        f."rating" AS "CLASIFICACIÓN",
        f."length" AS "DURACIÓN"
FROM "film"AS f
WHERE f."rating"= 'PG-13' OR f."length">180


--COMPROBACIÓN
--CUANTOS HAY PG- 13= 223

SELECT  COUNT(f."rating") AS "CLASIFICACIÓN"
FROM film AS f 
WHERE "rating" = 'PG-13'
GROUP BY f."rating" 



--CUANTOS HAY >3H= 30


SELECT f."title" AS "PELÍCULA",
       f. "rating" AS "CLASIFICACIÓN",
       f."length" AS "DURACIÓN"
FROM "film" AS f
WHERE f."length" > 180
  AND f."rating" <> 'PG-13'
ORDER BY f."rating"