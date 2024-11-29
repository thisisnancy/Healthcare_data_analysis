-- 2. Load the data from file to table, using copy command
-- To use the copy command, connect the psql  shell with the db. Write the copy command on shell

-- \COPY scratch_table FROM 'C:\Users\sonin\DATA SCIENCE\SQL\project_healthcare\healthcare_dataset.csv' DELIMITER ',' CSV HEADER;

ALTER TABLE scratch_table 
ALTER COLUMN date_of_admission TYPE date USING to_date(date_of_admission, 'DD/MM/YY');

ALTER TABLE scratch_table
ALTER COLUMN discharge_date TYPE date USING to_date(discharge_date, 'DD/MM/YY');

SELECT * FROM scratch_table;