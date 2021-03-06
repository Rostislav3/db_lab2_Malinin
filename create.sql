CREATE TABLE efficency (
	name varchar(50) NOT NULL,
	eff_prc int NOT NULL,
	PRIMARY KEY (name)
);

CREATE TABLE manufacturer (
	mnf_id SERIAL,
	mnf_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (mnf_id)
);

CREATE TABLE origin_country (
	country_id SERIAL,
	country_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (country_id)
);


CREATE TABLE vaccines (
	vaccine_id SERIAL,
	name VARCHAR(100) NOT NULL,
	mnf_id INT NOT NULL,
	country_id INT NOT NULL,
	PRIMARY KEY (vaccine_id),
	CONSTRAINT FK_efficency
		FOREIGN KEY (name)
			REFERENCES efficency (name) ON DELETE CASCADE,
	CONSTRAINT FK_manufacturer
		FOREIGN KEY (mnf_id)
	  		REFERENCES manufacturer (mnf_id) ON DELETE CASCADE,
	CONSTRAINT FK_country
		FOREIGN KEY (country_id)
	  		REFERENCES origin_country (country_id) ON DELETE CASCADE
);
