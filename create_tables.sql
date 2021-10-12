CREATE TABLE movie(
 	title SERIAL PRIMARY KEY,
 	show_time NUMERIC
);

 CREATE TABLE customer(
 	customer_id SERIAL PRIMARY KEY,
 	first_name VARCHAR(50),
 	last_name VARCHAR(50),
 	address VARCHAR(50),
 	billing_info VARCHAR(50)
);

CREATE TABLE tickets(
 	ticket_id SERIAL PRIMARY KEY,
 	sub_total NUMERIC,
 	title INTEGER NOT NULL,
 	customer_id INTEGER NOT NULL,
	FOREIGN KEY(title) REFERENCES movie(title),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE consessions(
	food_name SERIAL PRIMARY KEY,
	amount NUMERIC,
	product_count INTEGER,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

