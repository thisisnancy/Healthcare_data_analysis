-- 3. Based on star schema

--DIMENSION TABLE
--patient details
CREATE TABLE patients ( 
	patient_id INTEGER PRIMARY KEY,
	name VARCHAR (30),
	age INTEGER,
	gender VARCHAR(20),
	blood_type VARCHAR(3),
	medical_condition VARCHAR(20));

-- FACT TABLE
--hospital/admission details table
CREATE TABLE hospital(
	admission_id INTEGER PRIMARY KEY ,
	patient_id INTEGER,
	name VARCHAR(30),
	doctor VARCHAR(30),
	hospital VARCHAR(40),
	date_of_admission DATE,
	room_number INTEGER ,
	admission_type VARCHAR(20),
	discharge_date DATE ,
	insurance_provider VARCHAR(30),
	billing_amount INTEGER ,
	FOREIGN KEY (patient_id) REFERENCES patients(patient_id));

-- FACT TABLE
--medications and test results table
CREATE TABLE MedicationsandTestResults(
	admission_id INTEGER ,
	medication VARCHAR(30),
	test_results VARCHAR(20),
	FOREIGN KEY (admission_id) REFERENCES hospital(admission_id));

-- inserting data into the tables from scratch_table
--inserting data into the patients table 
INSERT INTO patients(patient_id,Name,Age,Gender,Blood_Type,Medical_Condition)
SELECT patient_id,Name,Age,Gender,Blood_Type,Medical_Condition
FROM scratch_table;

--inserting data into the hospital table
INSERT INTO hospital(Admission_id,patient_id,Date_of_Admission,Doctor,
     Hospital,Insurance_Provider,Billing_Amount,
     Room_Number,Admission_Type,Discharge_Date)
SELECT Admission_id,patient_id,Date_of_Admission,Doctor,
     Hospital,Insurance_Provider,Billing_Amount,
     Room_Number,Admission_Type,Discharge_Date
FROM scratch_table;

--inserting data into the medicationsAndTestResults table
INSERT INTO medicationsAndTestResults(Admission_id, Medication, Test_Results)
SELECT Admission_id, Medication, Test_Results
FROM scratch_table;

-- CREATING A NEW FACT TABLE
CREATE TABLE hospitalandinsurance AS
SELECT h.Admission_id, p.name,m.test_Results 
FROM hospital h
JOIN MedicationsandTestResults m ON h.admission_id=m.admission_id
JOIN patients p ON h.patient_id=pCREATE TABLE
