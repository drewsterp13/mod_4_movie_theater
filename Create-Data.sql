insert into movie (
	movie_id,
	title,
	rating
) values (
	1,
	'Star Wars Episode III - Revenge of the Sith',
	'PG-13'
);

insert into room (
	room_number,
	capacity
) values (
	3,
	50
);

insert into popcorn (
	popcorn_id,
	sizes,
	amount,
	price
) values (
	1,
	'L',
	1,
	5.99
);

insert into drink (
	drink_id,
	sizes,
	amount,
	price
) values (
	1,
	'L',
	1,
	1.99
);

insert into candy (
	candy_id,
	sizes,
	amount,
	price
) values (
	1,
	'MM',
	2,
	1.99
);

insert into concession (
	concession_id,
	popcorn_id,
	drink_id,
	candy_id
) values (
	1,
	1,
	1,
	1
);

insert into ticket (
	ticket_id,
	movie_date,
	movie_time,
	billing,
	ticket_amount,
	movie_id,
	room_number
) values (
	132,
	'2025/5/16',
	'7:19pm',
	12.99,
	1,
	1,
	3
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	email,
	phone,
	ticket_id,
	concession_id
) values (
	1853,
	'John',
	'Thompson',
	'thompsonj@craftmail.com',
	'123-456-7890',
	132,
	1
);

select * from movie;

select * from room;

select * from popcorn;

select * from drink;

select * from candy;

select * from concession;

select * from ticket;

select * from customer;