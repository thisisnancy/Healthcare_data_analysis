--1. Creating 'scratch_table' table in the database

CREATE TABLE scratch_table (
	patient_id INTEGER  PRIMARY,
	name VARCHAR(30),
	age INTEGER ,
	gender VARCHAR(10),
	blood_type VARCHAR(3),
	medical_condition VARCHAR(20),
	admission_id INTEGER,
	date_of_admission VARCHAR(10),
	doctor VARCHAR(30),
	hospital VARCHAR(40),
	insurance_provider VARCHAR(30),
	billing_amount NUMERIC(10,2),
	room_number INTEGER,
	admission_type VARCHAR(20),
	discharge_date VARCHAR(10),
	medication VARCHAR(30),
	test_results VARCHAR(20)
)