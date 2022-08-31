CREATE TABLE "Movies" (
	"movie_id" SERIAL,
	"showtime" TIME NOT NULL,
	"tickets_sold" INTEGER,
	PRIMARY KEY("movie_id")
);

CREATE TABLE "Tickets" (
	"ticket_id" SERIAL,
	"movie_id" INTEGER,
	"seat_number" INTEGER,
	PRIMARY KEY("ticket_id"),
	FOREIGN KEY("movie_id")
		REFERENCES"Movies"("movie_id")
);

CREATE TABLE "Customers" (
	"customer_id" SERIAL,
	"first_name" VARCHAR(60),
	"last_name" VARCHAR(60),
	"billing_info" VARCHAR(60),
	"ticket_id" INTEGER,
	PRIMARY KEY ("customer_id"),
	FOREIGN KEY ("ticket_id")
		REFERENCES "Tickets"("ticket_id")
);

CREATE TABLE "Product" (
	"SKU" SERIAL,
	"product_name" VARCHAR(60),
	"price" NUMERIC(5,2),
	PRIMARY KEY("SKU")
);

CREATE TABLE "Inventory" (
	"inventory_id" SERIAL,
	"SKU" INTEGER,
	"product_amount" INTEGER,
	PRIMARY KEY("inventory_id"),
	FOREIGN KEY("SKU")
		REFERENCES "Product" ("SKU")
);

CREATE TABLE "Concessions" (
	"SKU" INTEGER,
	"inventory_id" INTEGER,
	"customer_id" INTEGER,
	"sub_total" NUMERIC(8,2),
	FOREIGN KEY("SKU")
		REFERENCES "Product"("SKU"),
	FOREIGN KEY ("inventory_id")
		REFERENCES "Inventory" ("inventory_id"),
	FOREIGN KEY ("customer_id")
		REFERENCES "Customers" ("customer_id")
)