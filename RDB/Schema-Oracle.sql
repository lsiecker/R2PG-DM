CREATE TABLE Person(
	name varchar(100) NOT NULL,
	DoB varchar(100) NULL,
	PRIMARY KEy (name)
);

CREATE TABLE Knows(
	person1 varchar(100) NOT NULL,
	person2 varchar(100) NOT NULL,
	PRIMARY KEY(person1, person2),
	FOREIGN KEY(person1) REFERENCES Person(name),
	FOREIGN KEY(person2) REFERENCES Person(name)
);

CREATE TABLE Location(
	placename varchar(100) NOT NULL,
	magnitude varchar(100) NULL,
	country varchar(100) NOT NULL,
	PRIMARY KEY (placename, country)
);

CREATE TABLE LivesIn(
	name varchar(100) NOT NULL,
	placename varchar(100) NOT NULL,
	country varchar(100) NOT NULL,
	PRIMARY KEY(name,placename,country),
	FOREIGN KEY(name) REFERENCES Person(name),
	FOREIGN KEY(placename, country) REFERENCES Location(placename, country)
);

INSERT INTO Person(name, DoB) VALUES ('Bob', '1990');
INSERT INTO Person(name, DoB) VALUES ('Sue', NULL);
INSERT INTO Knows(person1, person2) VALUES ('Sue', 'Bob');
INSERT INTO Location(placename, magnitude, country) VALUES ('Austin', 'big', 'USA');
INSERT INTO Location(placename, magnitude, country) VALUES ('Eindhoven', 'small', 'NL');
INSERT INTO LivesIn(name, placename, country) VALUES ('Bob', 'Austin', 'USA');
INSERT INTO LivesIn(name, placename, country) VALUES ('Sue', 'Austin', 'USA');