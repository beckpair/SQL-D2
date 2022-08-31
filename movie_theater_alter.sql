ALTER TABLE "Tickets"
ADD "ticket_price" NUMERIC(5,2)


ALTER TABLE "Movies"
ALTER COLUMN "showtime"  TYPE TIME(2)

ALTER TABLE "Movies"
ADD "movie_name" VARCHAR(60)

DELETE FROM "Movies"
WHERE movie_id = 2;