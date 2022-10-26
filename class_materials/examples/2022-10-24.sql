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

ALTER TABLE
	books
MODIFY
	COLUMN publisher_id int NOT NULL;

ALTER TABLE
	books
ADD
	CONSTRAINT fk_books_publisher_id FOREIGN KEY (publisher_id) REFERENCES publishers(id);

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
);

CREATE TABLE users (
	id int NOT NULL AUTO_INCREMENT,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (id)
);

INSERT INTO
	genres (title)
VALUES
	("horror");

INSERT INTO
	genres (title)
VALUES
	("history"),
	("children");

INSERT INTO
	genres (title)
VALUES
	("romance");

INSERT INTO
	publishers (title, company_id)
VALUES
	("sviesa", 12345),
	("some publisher", 12245),
	("another publisher", 12346);

ALTER TABLE
	`books` CHANGE `pulish_date` `publish_date` DATETIME NULL DEFAULT NULL;

INSERT INTO
	books (
		title,
		number_of_pages,
		publish_date,
		description,
		publisher_id
	)
VALUES
	(
		"frankenstein",
		280,
		"1818-01-01",
		"Frankenstein tells the story of Victor Frankenstein, a young scientist who creates a sapient creature in an unorthodox scientific experiment",
		1
	);

INSERT INTO
	books (
		title,
		number_of_pages,
		publish_date,
		description,
		publisher_id
	)
VALUES
	(
		"dracula",
		287,
		"1897-01-01",
		"„Drakula“ yra epistolinis romanas, parašytas laiškų, dienoraščių, straipsnių, užrašų forma. Grafo Drakulos prototipas yra Valakijos princas Vladas III, Vladas Drakula, pagarsėjęs savo žiaurumu.",
		1
	),
	(
		"it",
		1142,
		"1986-01-01",
		"Romane „Tas“ aprašoma Deryje gyvenanti ir žudanti vaikus antgamtinė būtybė, gebanti keisti savo esybės formą ir pavidalą",
		1
	),
	(
		"the witcher",
		235,
		"1990-01-01",
		"The series revolves around the eponymous witcher, Geralt of Rivia. In Sapkowski's works, witchers are beast hunters who develop supernatural abilities at a young age to battle wild beasts and monsters",
		2
	),
	(
		"pride and prejudice",
		654,
		"1813-01-01",
		"The novel follows the character development of Elizabeth Bennet, the dynamic protagonist of the book who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.",
		1
	);

INSERT INTO
	authors (first_name, last_name, birth_date, description)
VALUES
	("mary", "shelley", "1797-01-01", ""),
	("bram", "stoker", "1847-01-01", ""),
	("stephen", "king", "1947-01-01", ""),
	("andrzej", "sapkowski", "1948-01-01", ""),
	("jane", "austen", "1775-01-01", "");

CREATE TABLE book_genre (
	book_id int NOT NULL,
	genre_id int NOT NULL,
	CONSTRAINT pk_book_genre PRIMARY KEY (book_id, genre_id),
	CONSTRAINT fk_book_genre_book_id FOREIGN KEY (book_id) REFERENCES books(id),
	CONSTRAINT fk_book_genre_genre_id FOREIGN KEY (genre_id) REFERENCES genres(id)
);

CREATE TABLE book_author (
	book_id int NOT NULL,
	author_id int NOT NULL,
	CONSTRAINT pk_book_author PRIMARY KEY (book_id, author_id),
	CONSTRAINT fk_book_author_book_id FOREIGN KEY (book_id) REFERENCES books(id),
	CONSTRAINT fk_book_author_author_id FOREIGN KEY (author_id) REFERENCES authors(id)
);

INSERT INTO
	book_genre (book_id, genre_id)
VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(4, 4),
	(5, 4),
	(5, 2);

INSERT INTO
	book_author (book_id, author_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5);

SELECT
	*
from
	books;

SELECT
	id,
	title
from
	books;

SELECT
	*
from
	books
ORDER BY
	publish_date DESC;

SELECT
	*
from
	books
WHERE
	number_of_pages < 500;

SELECT
	*
from
	books
WHERE
	publish_date < "1900-01-01"
ORDER BY
	publish_date;

SELECT
	*
from
	books
WHERE
	number_of_pages < 500
	and publish_date < "1900-01-01"
ORDER BY
	publish_date;

SELECT
	*
from
	books
WHERE
	publisher_id = 2;

SELECT
	COUNT(*) as books_count
from
	books;

SELECT
	COUNT(*) as books_count,
	AVG(number_of_pages) as mean_number_of_pages
from
	books;

SELECT
	COUNT(*) as books_count,
	AVG(number_of_pages) as mean_number_of_pages
from
	books
WHERE
	number_of_pages < 500
	and publish_date < "1900-01-01";

SELECT
	*
from
	authors;

SELECT
	*
from
	authors
where
	birth_date >= "1900-01-01"
	and birth_date < "2000-01-01";

SELECT
	books.id as book_id,
	books.title,
	publishers.title,
	publishers.company_id
from
	books
	left join publishers ON books.publisher_id = publishers.id;

SELECT
	books.*,
	authors.first_name as author_first_name,
	authors.last_name as author_last_name
from
	books
	left join book_author on books.id = book_author.book_id
	left join authors on authors.id = book_author.author_id;

SELECT
	books.*,
	genres.title as genre,
	authors.first_name as author_first_name,
	authors.last_name as author_last_name
from
	books
	left join book_author on books.id = book_author.book_id
	left join book_genre on books.id = book_genre.book_id
	left join genres on genres.id = book_genre.genre_id
	left join authors on authors.id = book_author.author_id;

select
	publishers.*,
	books.*
from
	publishers
	left join books on publishers.id = books.publisher_id
where
	books.id is not null;

select
	publishers.title,
	count(*) as books_count
from
	publishers
	inner join books on publishers.id = books.publisher_id
	and books.number_of_pages <= 500
group by
	publishers.title;

select
	publishers.title,
	count(*) as books_count
from
	publishers
	left join books on publishers.id = books.publisher_id
	and books.number_of_pages <= 500
where
	books.id is not null
group by
	publishers.title;