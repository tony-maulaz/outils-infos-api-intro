-- docker exec db_api_person psql -U postgres -q -d mydb -f /code/create_person.sql

DROP SCHEMA IF EXISTS api_person CASCADE;
CREATE SCHEMA api_person;
set SCHEMA 'api_person';

-- Create tables
DROP TABLE IF EXISTS person_address;
DROP TABLE IF EXISTS persons;
DROP TABLE IF EXISTS addresses;


CREATE TABLE persons(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL
);

CREATE TABLE addresses(
    id SERIAL PRIMARY KEY,
    npa int NOT NULL,
    city VARCHAR(50) NOT NULL,
    UNIQUE (npa, city)
);

CREATE TABLE IF NOT EXISTS person_address (
    id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    UNIQUE (person_id, address_id),

    FOREIGN KEY (person_id) REFERENCES persons(id),
    FOREIGN KEY (address_id) REFERENCES addresses(id)
);

TRUNCATE TABLE person_address, persons, addresses RESTART IDENTITY CASCADE;

insert into persons (firstname, lastname) values ('Noland', 'Marfield'); -- 1
insert into persons (firstname, lastname) values ('Alene', 'Llop');
insert into persons (firstname, lastname) values ('Martie', 'Brocking');
insert into persons (firstname, lastname) values ('Juliet', 'Robbings');
insert into persons (firstname, lastname) values ('Anne-marie', 'Emptage');
insert into persons (firstname, lastname) values ('Jade', 'Matthiesen');
insert into persons (firstname, lastname) values ('Sheree', 'Pennigar');
insert into persons (firstname, lastname) values ('Kim', 'Brosel');
insert into persons (firstname, lastname) values ('Adan', 'Edwardes');
insert into persons (firstname, lastname) values ('Casandra', 'Butting');
insert into persons (firstname, lastname) values ('Roosevelt', 'Judson');
insert into persons (firstname, lastname) values ('Rogerio', 'Gentile');
insert into persons (firstname, lastname) values ('Reynold', 'Ciccetti');
insert into persons (firstname, lastname) values ('Beret', 'Saich');
insert into persons (firstname, lastname) values ('Angus', 'Saterthwait');
insert into persons (firstname, lastname) values ('Silvester', 'Dukesbury');
insert into persons (firstname, lastname) values ('Lilith', 'O'' Scallan');
insert into persons (firstname, lastname) values ('Aveline', 'Chatelain');
insert into persons (firstname, lastname) values ('Di', 'Handlin');
insert into persons (firstname, lastname) values ('Eric', 'Dalmon');
insert into persons (firstname, lastname) values ('Tom', 'Cruise'); -- 21
insert into persons (firstname, lastname) values ('Brad', 'Pitt'); -- 22
insert into persons (firstname, lastname) values ('Angelina', 'Jolie'); -- 23
insert into persons (firstname, lastname) values ('Johnny', 'Depp'); -- 24
insert into persons (firstname, lastname) values ('Leonardo', 'DiCaprio'); -- 25
insert into persons (firstname, lastname) values ('Will', 'Smith'); -- 26
insert into persons (firstname, lastname) values ('Denzel', 'Washington'); -- 27
insert into persons (firstname, lastname) values ('Matt', 'Damon'); -- 28
insert into persons (firstname, lastname) values ('Tom', 'Hanks'); -- 29
insert into persons (firstname, lastname) values ('Robert', 'De Niro'); -- 30
insert into persons (firstname, lastname) values ('Eric', 'Dalmon'); -- 31
insert into persons (firstname, lastname) values ('Dany', 'Boon'); 
insert into persons (firstname, lastname) values ('Jean', 'Dujardin');
insert into persons (firstname, lastname) values ('Gérard', 'Depardieu');
insert into persons (firstname, lastname) values ('Valérie', 'Bonneton'); -- 35
insert into persons (firstname, lastname) values ('Bérangère', 'McNeese'); -- 36

insert into addresses (npa, city) values (1000, 'Lausanne');
insert into addresses (npa, city) values (2000, 'Neuchatel');
insert into addresses (npa, city) values (3000, 'Bern');
insert into addresses (npa, city) values (4000, 'Basel');
insert into addresses (npa, city) values (5000, 'Aarau');

insert into person_address (person_id, address_id) values (1, 1);
insert into person_address (person_id, address_id) values (2, 2);
insert into person_address (person_id, address_id) values (3, 3);
insert into person_address (person_id, address_id) values (4, 4);
insert into person_address (person_id, address_id) values (1, 2);
insert into person_address (person_id, address_id) values (1, 3);
insert into person_address (person_id, address_id) values (2, 3);
insert into person_address (person_id, address_id) values (21, 3);
insert into person_address (person_id, address_id) values (21, 2);
insert into person_address (person_id, address_id) values (21, 1);
insert into person_address (person_id, address_id) values (22, 2);
insert into person_address (person_id, address_id) values (24, 3);
insert into person_address (person_id, address_id) values (25, 2);
insert into person_address (person_id, address_id) values (25, 5);
insert into person_address (person_id, address_id) values (24, 2);
insert into person_address (person_id, address_id) values (26, 3);
insert into person_address (person_id, address_id) values (23, 1);
insert into person_address (person_id, address_id) values (28, 4);
insert into person_address (person_id, address_id) values (29, 4);
insert into person_address (person_id, address_id) values (28, 1);
