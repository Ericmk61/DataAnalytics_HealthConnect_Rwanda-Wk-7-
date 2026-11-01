-- Testing
USE rwanda_healthcare;

-- Total Patients
ALTER table patients
change column ï»¿PatientID
PatientID text;

SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT PatientID) AS Unique_Patients
FROM patients;

-- Total Appointments
SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT AppointmentID) AS Unique_Appointments
FROM appointments;

-- Total facilities
ALTER table facilities
change column ï»¿FacilityID
FacilityID text;

SELECT
    COUNT(DISTINCT FacilityID) AS Total_Facilities
FROM facilities;

-- Total doctors
SELECT
    COUNT(DISTINCT DoctorID) AS Total_Doctors
FROM appointments;

-- patient satisfaction

SELECT
    ROUND(AVG(Rating), 2) AS Average_Satisfaction
FROM patient_feedback;

-- collected revenue

SELECT
    SUM(AmountPaid) AS Collected_Revenue
FROM payments;

-- Male Chronic condition 
SELECT
    ChronicCondition,
    COUNT(*) AS Male_Patients
FROM patients
WHERE Gender = 'Male'
GROUP BY ChronicCondition;

-- Female Chronic condition 
SELECT
    ChronicCondition,
    COUNT(*) AS Female_Patients
FROM rwanda_healthcare.patients
WHERE Gender = 'Female'
GROUP BY ChronicCondition;