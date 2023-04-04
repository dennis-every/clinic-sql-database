CREATE DATABASE clinic;

CREATE TABLE patients(
  id              INT GENERATED ALWAYS AS IDENTITY,
  name            VARCHAR(250),
  date_of_birth   DATE,
  PRIMARY KEY(id)
);

CREATE TABLE medical_histories (
		id INT GENERATED ALWAYS AS IDENTITY,
    admitted_at DATE,
    patient_id INT,
    status VARCHAR(100),
    PRIMARY KEY (id)
);