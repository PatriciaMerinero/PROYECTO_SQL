--ENCUENTRA EL ID DEL ACTOR MAS BAJO Y MAS ALTO EN LA TABLA ACTOR

SELECT MIN("actor_id") AS "MIN ID ACTOR",
	   MAX("actor_id") AS "MAX ID ACTOR"	
FROM "actor" AS a


--comprobación tenemos del 1 al 200


SELECT "actor_id"AS "id actor"
FROM "actor" AS a