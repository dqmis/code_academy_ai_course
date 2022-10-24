CREATE TABLE books (
	id int NOT NULL AUTO_INCREMENT,
	title varchar(255) NOT NULL,
	number_of_pages int NOT NULL,
	pulish_date datetime,
	description text,
	publisher_id int,
	PRIMARY KEY (id)
);

CREATE TABLE publishers (
	id int NOT NULL AUTO_INCREMENT,
	title varchar(255) NOT NULL,
	company_id int UNIQUE,
	PRIMARY KEY (id)
);

ALTER TABLE books MODIFY COLUMN publisher_id int NOT NULL;
ALTER TABLE books ADD CONSTRAINT fk_publisher_id FOREIGN KEY (publisher_id) REFERENCES publishers(id);

ALTER TABLE books DROP FOREIGN KEY fk_publisher_id;

CREATE TABLE genre (
	id int NOT NULL AUTO_INCREMENT,
	title varchar(255) NOT NULL,
	 INDEX(title),
	PRIMARY KEY (id)
);

DROP TABLE genre;

CREATE TABLE genres (
	id int NOT NULL AUTO_INCREMENT,
	title varchar(255) NOT NULL,
	 INDEX(title),
	PRIMARY KEY (id)
);

CREATE TABLE authors (
	id int NOT NULL AUTO_INCREMENT,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	birth_date datetime,
	description text,
	PRIMARY KEY (id)
)

CREATE TABLE users (
	id int NOT NULL AUTO_INCREMENT,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	 email varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (id)
)



