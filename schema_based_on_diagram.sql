CREATE DATABASE clinic;

CREATE TABLE patients(
  id              INT GENERATED ALWAYS AS IDENTITY,
  name            VARCHAR(250),
  date_of_birth   DATE,
  PRIMARY KEY(id)
);

CREATE TABLE medical_histories (
		id INT GENERATED ALWAYS AS IDENTITY,
    admitted_at TIMESTAMP,
    patient_id INT,
    status VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE invoices {
  id                  INT GENERATED ALWAYS AS IDENTITY,
  total_amount        DECIMAL,
  generated_at        TIMESTAMP,
  payed_at            TIMESTAMP,
  medical_history_id  INT,
  PRIMARY KEY(id)
}


CREATE TABLE invoice_items {
  id                INT GENERATED ALWAYS AS IDENTITY,
  unit_price        DECIMAL,
  quantity          INT,
  total_price       DECIMAL,
  invoice_id        INT,
  treatment_id      INT,
  PRIMARY KEY(id)
}

CREATE TABLE treatments (
	id INT GENERATED ALWAYS AS IDENTITY,
  type	VARCHAR(100), 
  name	VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE visits (
		date_of_visit DATE NOT NULL,
    medical_history_id INTEGER REFERENCES medical_histories(id),
    treatment_id INTEGER REFERENCES treatments(id),
    PRIMARY KEY (date_of_visit, medical_history_id, treatment_id)
);

