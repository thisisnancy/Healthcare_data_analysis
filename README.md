# Healthcare_data_analysis
# Project Overview:
This project analyzes healthcare data from a hospital system, focusing on patient details, hospital admissions, medications, test results, and key health statistics. The data is organized using a star schema with Dimension Tables (e.g., patients) and Fact Tables (e.g., hospital, medicationsandtestresults) to enable efficient data analysis.

## Key Tables:  
- scratch_table: Stores raw data from a CSV file before transformation.
- patients (Dimension Table): Stores patient details (e.g., name, age, medical_condition).
- hospital (Fact Table): Contains hospital admission details (e.g., admission_id, doctor, billing_amount).
- MedicationsandTestResults (Fact Table): Stores medications and test results for each admission.
- hospitalandinsurance (Derived Fact Table): Combines data from hospital and MedicationsandTestResults.

## Key Queries and Insights:
-Largest Insurance Provider: Identifies the insurance provider with the most patients.  
Result: UnitedHealthcare with 8051 patients.  

-Gender Most Affected by Cancer: Identifies the gender most affected by cancer.  
Result: Female patients.  

-Cancer Patients with Normal Test Results: Counts cancer patients with normal test results.  
Result: 2208 cancer patients.

-Age Group with Highest Obesity Prevalence: Finds the age group with the highest obesity rate.  
Result: Above 70.
  
-Blood Type Associated with Diabetes: Identifies the blood type most linked to diabetes.  
Result: B+ blood type with 859 patients.  

## Data Transformation Steps:
-Load Data: Load raw data into scratch_table using COPY from a CSV file.  
-Data Cleanup: Format date columns (date_of_admission, discharge_date).  
-Populate Tables: Insert data into patients, hospital, and MedicationsandTestResults.  
-Create Derived Table: Create hospitalandinsurance to link hospital and test data.  

## Technologies Used:  
-PostgreSQL for database management and SQL queries.  
-This project demonstrates how to transform and analyze healthcare data for valuable insights on patient conditions, demographics, and health statistics.








