insert into movie (
	movie_id,
	title,
	rating
) values (
	2,
	'The Super Mario Bros. Movie',
	'PG'
);

insert into room (
	room_number,
	capacity
) values (
	2,
	60
);

-- L is large, M is medium and K is kids size
insert into popcorn (
	popcorn_id,
	sizes,
	amount,
	price
) values (
	2,
	'LMMKK',
	5,
	15.99
);

insert into drink (
	drink_id,
	sizes,
	amount,
	price
) values (
	2,
	'LLK',
	3,
	4.22
);

insert into candy (
	candy_id,
	sizes,
	amount,
	price
) values (
	2,
	'LM',
	2,
	3.49
);

insert into concession (
	concession_id,
	popcorn_id,
	drink_id,
	candy_id
) values (
	2,
	2,
	2,
	2
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
	163,
	'2023/4/7',
	'6:27pm',
	36.99,
	5,
	2,
	2
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
	1562,
	'Kyle',
	'Johnson',
	'kylenashley@craftmail.com',
	'246-802-4680',
	163,
	2
);

select * from movie;

select * from room;

select * from popcorn;

select * from drink;

select * from candy;

select * from concession;

select * from ticket;

select * from customer;