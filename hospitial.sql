-- create database hospital
-- CREATE TABLE Patients (
--     PatientID INT AUTO_INCREMENT PRIMARY KEY,   
--     FirstName VARCHAR(50) NOT NULL,             
--     LastName VARCHAR(50) NOT NULL,              
--     DateOfBirth DATE NOT NULL,                 
--     Gender ENUM('Male', 'Female', 'Other') NOT NULL, 
--     PhoneNumber VARCHAR(15),                   
--     Email VARCHAR(100),                        
--     Address TEXT,                              
--     DateRegistered DATETIME DEFAULT CURRENT_TIMESTAMP 
-- );
--     select *from patients

-- CREATE TABLE Doctors (
--     DoctorID INT AUTO_INCREMENT PRIMARY KEY,
--     FirstName VARCHAR(50) NOT NULL,
--     LastName VARCHAR(50) NOT NULL,             
--     Specialty VARCHAR(100),                    
--     PhoneNumber VARCHAR(15),                    
--     Email VARCHAR(100),                        
--     DateJoined DATETIME DEFAULT CURRENT_TIMESTAMP
-- );
-- select *from doctors
-- CREATE TABLE Appointments (
--     AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
--     PatientID INT,
--     DoctorID INT,
--     AppointmentDate DATETIME NOT NULL,
--     Status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
--     FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
--     FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
-- );
-- select *from appointments
-- CREATE TABLE MedicalRecords (
--     RecordID INT AUTO_INCREMENT PRIMARY KEY,   
--     PatientID INT,                            
--     DoctorID INT,                             
--     AppointmentID INT,                       
--     RecordDate DATETIME DEFAULT CURRENT_TIMESTAMP, 
--     Diagnosis TEXT,
--     Treatment TEXT,                          
--     Notes TEXT,
--     FOREIGN KEY (PatientID) REFERENCES Patients(PatientID), 
--     FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),   
--     FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID) 
-- );
-- select *from medicalrecords

-- INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, PhoneNumber, Email, Address) VALUES 
-- ('john', 'Doe', '1980-01-01', 'Male', '123-456-7890', 'john.doe@example.com', '123 Elm St'),
-- ('Jane', 'Smith', '1990-02-14', 'Female', '987-654-3210', 'jane.smith@example.com', '456 Oak St');

-- INSERT INTO Doctors (FirstName, LastName, Specialty, PhoneNumber, Email) VALUES 
-- ('Dr. Alice', 'Johnson', 'Cardiology', '555-555-5555', 'alice.johnson@hospital.com'),
-- ('Dr. Bob', 'Brown', 'Neurology', '555-555-5556', 'bob.brown@hospital.com');


-- INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status) VALUES 
-- (1, 1, '2024-09-15 10:00:00', 'Scheduled'),
-- (2, 2, '2024-09-16 11:00:00',  'Scheduled');

-- INSERT INTO MedicalRecords (PatientID, DoctorID, AppointmentID, Diagnosis, Treatment, Notes) VALUES 
-- (1, 1, 1, 'Healthy', 'No treatment required', 'Patient is in good health'),
-- (2, 2, 2, 'Migraine', 'Prescribed medication', 'Patient needs to follow up in a month');

