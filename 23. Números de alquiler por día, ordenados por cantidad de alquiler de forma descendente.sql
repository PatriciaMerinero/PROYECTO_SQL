--NUMEROS DE ALQUILER POR DÍAS, ORDENADOS POR CANTIDAD DE ALQUILER DE FORMA DESCENDENTE

--Encontré la función DATE, que convierte el timestamp en solo FECHA


SELECT DATE("rental_date") AS "DÍA ALQUILER",
		COUNT ("rental_date") AS "NUMERO ALQUILERES"
FROM "rental" AS r
GROUP BY DATE ("rental_date")
ORDER BY "NUMERO ALQUILERES"DESC 





