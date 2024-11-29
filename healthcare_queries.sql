-- 4. Key Health Statistics Overview and Observation :-

-- 1.The largest insurance provider nationwide.
SELECT insurance_provider,COUNT(*) 
FROM hospital 
GROUP BY insurance_provider
ORDER BY insurance_provider DESC LIMIT 1;
-- ANSWER :- The largest insurance provider nationwide IS UNITEDHEALTHCARE with a count of 8051.

-- 2.Which gender is most commonly affected by cancer?
SELECT gender, medical_condition ,COUNT(*) AS count_of_patients
FROM patients
GROUP BY gender,medical_condition
HAVING medical_condition='Cancer'
ORDER BY gender;
--ANSWER :- The gender is most commonly affected by cancer is FEMALE.

-- 3.Number of cancer patients whose test results show as normal.
SELECT p.medical_condition , hi.test_results, count(*) as count_of_patients
FROM hospitalandinsurance hi 
JOIN patients p ON hi.name=p.name
GROUP BY p.medical_condition,hi.test_results
HAVING test_results='Normal' AND medical_condition='Cancer';
-- ANSWER:- The number of cancer patients whose test results show as normal is 2208

-- 4.Age group with the highest prevalence of obesity 
--"Creating a new column in the patients table to categorize patients into different age groups."
-- Step 1: Add the new Age_group column
ALTER TABLE patients ADD COLUMN Age_group VARCHAR(10);

-- Step 2: Update Age_group column based on Age
UPDATE patients
SET Age_group = CASE
 WHEN Age BETWEEN 0 AND 10 THEN '0-10'
 WHEN Age BETWEEN 11 AND 20 THEN '11-20'
 WHEN Age BETWEEN 21 AND 30 THEN '21-30'
 WHEN Age BETWEEN 31 AND 40 THEN '31-40'
 WHEN Age BETWEEN 41 AND 50 THEN '41-50'
 WHEN Age BETWEEN 51 AND 60 THEN '51-60'
 WHEN Age BETWEEN 61 AND 70 THEN '61-70'
 ELSE 'Above 70' 
END;

SELECT medical_Condition, age_group, COUNT(*) AS Count_of_Patient
FROM patients
GROUP BY medical_Condition, age_group
HAVING medical_Condition='Obesity'
ORDER BY Count_of_Patient DESC LIMIT 1;
-- ANSWER :- Patients with age group above 70 exhibits the highest rate of obersity.


-- 5.Blood type most associated with diabetes.
SELECT blood_Type, medical_Condition, COUNT(*) AS Count_of_Patient
FROM patients
GROUP BY blood_Type, medical_Condition
HAVING medical_Condition='Diabetes'
ORDER BY Count_of_Patient DESC LIMIT 5;
-- ANSWER --> Blood type B+ is mostly associated with diabetes with count of 859.