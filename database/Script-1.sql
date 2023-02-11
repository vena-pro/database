create table country(
	id int,
	code_country int,
	primary key (id)
);

create table oper(
	id int,
	operator_code int,
	primary key (id)
);

create table unique_number(
	id int,
	num int,
	primary key (id)
);


create table phone_number(
	id int,
	countrys int REFERENCES country (id),
	opera int REFERENCES oper (id),
	un_number int REFERENCES unique_number (id),
	primary key (id)	
);

create table reviews (
	id int REFERENCES phone_number(id),
	id_phone int,
	reviews varchar
);