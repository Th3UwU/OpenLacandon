-- DATABASE
CREATE DATABASE OPENLACANDON
	WITH
	OWNER = postgres
	ENCODING = 'UTF8'
	LC_COLLATE = 'English_United States.1252'
	LC_CTYPE = 'English_United States.1252'
	TABLESPACE = pg_default
	CONNECTION LIMIT = -1;


-- CLIENT TABLE
CREATE TABLE CLIENT
(
	-- PRIMARY KEY
	ID SMALLSERIAL PRIMARY KEY NOT NULL,

	-- ACCOUNT INFO
	USERNAME VARCHAR(64) UNIQUE NOT NULL,
	PASS VARCHAR(64) NOT NULL,
	EMAIL VARCHAR(64) UNIQUE NOT NULL,
	PLUS BOOL DEFAULT FALSE,
	WALLET_BALANCE INTEGER DEFAULT 0,

	-- USER INFO
	FIRST_NAME VARCHAR(64) DEFAULT NULL,
	LAST_NAME VARCHAR(64) DEFAULT NULL,
	TEL BIGINT DEFAULT NULL,

	-- ADDRESS INFO
	ADDRESS VARCHAR(128) DEFAULT NULL,
	CITY VARCHAR(64) DEFAULT NULL,
	ZIP INTEGER DEFAULT NULL,
	COUNTRY VARCHAR(64) DEFAULT NULL
);

-- CLIENT EXAMPLES
INSERT INTO CLIENT VALUES(DEFAULT, 'ANGEL', '123', 'angel.storres@alumnos.udg.mx');
INSERT INTO CLIENT VALUES(DEFAULT, 'CHRISTIAN', '678', 'christian.delacruz1289@alumnos.udg.mx');
INSERT INTO CLIENT VALUES(DEFAULT, 'DAMIAN', '567', 'angel.garcia9106@alumnos.udg.mx');
INSERT INTO CLIENT VALUES(DEFAULT, 'STALIN', '123', 'stalin.mendoza7428@alumnos.udg.mx');