-- DROP TABLE facts;
-- DROP TABLE authors;
-- DROP TABLE departments;
-- DROP TABLE dates;
-- DROP TABLE publications;
-- DROP TABLE years;

CREATE TABLE publications (
    pID integer PRIMARY KEY,
    title text NOT NULL,
    type text,
    num_authors integer,
    pages integer,
    citations integer
);

CREATE TABLE departments (
    depID integer PRIMARY KEY,
    department text NOT NULL,
    faculty text
);

CREATE TABLE authors (
	aID integer PRIMARY KEY,
    lastname text NOT NULL,
    firstname text
);

CREATE TABLE dates (
	dateID integer PRIMARY KEY,
    date date,
	week integer,
	year integer,
	month integer
);

CREATE TABLE years (
    yID integer PRIMARY KEY,
    year integer
);

CREATE TABLE facts (
    pID integer REFERENCES publications (pID), 
    aID integer REFERENCES authors (aID),
	depID integer REFERENCES departments (depID),
    dateID integer REFERENCES dates (dateID),
    yID integer REFERENCES years (yID),
    points numeric
);
