-- This creates the movie table
create table movie (
	movie_id SERIAL primary key,
	title VARCHAR(50),
	rating VARCHAR(5)
);

-- This creates the room table
create table room (
	room_number INTEGER primary key,
	capacity INTEGER
);

-- This creates the popcorn table
create table popcorn (
	popcorn_id SERIAL primary key,
	sizes VARCHAR(20),
	amount INTEGER,
	price NUMERIC(5,2)
);

-- This creates the drink table
create table drink (
	drink_id SERIAL primary key,
	sizes VARCHAR(20),
	amount INTEGER,
	price NUMERIC(5,2)
);

-- This creates the candy table
create table candy (
	candy_id SERIAL primary key,
	sizes VARCHAR(20),
	amount INTEGER,
	price NUMERIC(5,2)
);

-- This creates the concession table
create table concession (
	concession_id SERIAL primary key,
	popcorn_id INTEGER not null,
	drink_id INTEGER not null,
	candy_id INTEGER not null,
	foreign key(popcorn_id) references popcorn(popcorn_id),
	foreign key(drink_id) references drink(drink_id),
	foreign key(candy_id) references candy(candy_id)
);

-- This creates the ticket table
create table ticket (
	ticket_id SERIAL primary key,
	movie_date VARCHAR(10),
	movie_time VARCHAR(7),
	billing NUMERIC(6,2),
	ticket_amount INTEGER,
	movie_id INTEGER not null,
	room_number INTEGER not null,
	foreign key(movie_id) references movie(movie_id),
	foreign key(room_number) references room(room_number)
);


-- This creates the customer table
create table customer (
	customer_id SERIAL primary key,
	date_n_time TIMESTAMP default CURRENT_TIMESTAMP,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(30),
	phone VARCHAR(20),
	ticket_id INTEGER not null,
	concession_id INTEGER not null,
	foreign key(ticket_id) references ticket(ticket_id),
	foreign key(concession_id) references concession(concession_id)
);