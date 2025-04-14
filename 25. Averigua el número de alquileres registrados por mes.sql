--AVERIGUA EL NUMERO DE ALQUILERES REGISTRADOS POR MES


--con la función TO_CHAR, extraigo de rental_date MES/AÑO


SELECT TO_CHAR ("rental_date", 'YYYY-MM') AS "ALQUILER POR MES",
		COUNT ("rental_date") AS "CONTEO ALQUILERES"
FROM "rental" AS r
GROUP BY "ALQUILER POR MES"


--con la función EXTRACT puedo extraer el mes

SELECT EXTRACT (MONTH FROM "rental_date") AS "MES",
		COUNT ("rental_date") AS "CONTEO ALQUILERES"
FROM "rental" AS r
GROUP BY "MES"