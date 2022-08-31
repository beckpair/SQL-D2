INSERT INTO "Movies" (
	movie_id,
	showtime,
	tickets_sold,
	movie_name
) VALUES (
	1,
	'07:00:00',
	1,
	'That One Disney Movie'
);

INSERT INTO "Tickets" (
	ticket_id,
	movie_id,
	seat_number,
	ticket_price
) VALUES (
	1,
	1,
	67,
	60.00
);

INSERT INTO "Customers" (
	customer_id,
	first_name,
	last_name,
	billing_info,
	ticket_id
) VALUES (
	1,
	'Bojack',
	'Horseman',
	'1234 4567 8901 2345  678  09/25',
	1	
);

INSERT INTO "Product" (
	"SKU",
	product_name,
	price
) VALUES (
	1,
	'Popcorn',
	400.99
);

INSERT INTO "Inventory" (
	inventory_id,
	"SKU",
	product_amount
) VALUES (
	1,
	1,
	50
);

INSERT INTO "Concessions" (
	"SKU",
	inventory_id,
	customer_id,
	sub_total
) VALUES (
	1,
	1,
	1,
	400.99
);

