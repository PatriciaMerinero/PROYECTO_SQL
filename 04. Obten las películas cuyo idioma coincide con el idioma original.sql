--OBTÉN LAS PELÍCULAS CUYO IDIOMA COINCIDE CON EL IDIOMA ORIGINAL

--me sale en idioma original null. Las películas no tienen un idioma original distinto al principal. Algunas películas fueron producidas directamente en su idioma principal y no se indica un idioma original

SELECT f."title" AS "PELÍCULA",
	   f."language_id" AS "IDIOMA",
	   f."original_language_id" AS "IDIOMA ORIGINAL"
FROM "film"AS f
WHERE f."language_id"= f."original_language_id"



--películas sin idioma original

SELECT 
  f."title" AS "PELÍCULA",
  f."language_id" AS "IDIOMA",
  f."original_language_id" AS "IDIOMA ORIGINAL"
FROM "film" AS f
WHERE f."original_language_id" IS NULL;
