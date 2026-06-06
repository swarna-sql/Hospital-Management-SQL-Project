                                                   Hospital_Management_System_Analysis_usng_sql

create database Hospital_Management_System;
use Hospital_Management_System;

/*table creation fro patients*/
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male', 'Female')),
    age INT CHECK (age > 0 AND age < 120),
    city VARCHAR(50),
    registration_date DATE
);

/*table creation for doctors*/
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(50),
    experience_years INT CHECK (experience_years >= 0)
);

/*table creation for appointment table*/
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    disease VARCHAR(100),
    status VARCHAR(20) CHECK (status IN ('Completed', 'Pending', 'Cancelled')),

    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

/*table creation for treatement table*/
CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY,
    appointment_id INT,
    treatment_name VARCHAR(100),
    treatment_cost DECIMAL(10,2),

    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

/*table creation fro billing table*/
CREATE TABLE billing (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    total_amount DECIMAL(10,2),
    payment_method VARCHAR(20) CHECK (payment_method IN ('UPI', 'Cash', 'Card', 'NetBanking')),
    payment_status VARCHAR(20) CHECK (payment_status IN ('Paid', 'Pending')),
    billing_date DATE,

    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

/*inserting values into patients*/
INSERT INTO patients VALUES (1, 'Ravi Kumar', 'Male', 45, 'Vijayawada', '2025-01-01');
INSERT INTO patients VALUES (2, 'Sita Devi', 'Female', 32, 'Guntur', '2025-01-02');
INSERT INTO patients VALUES (3, 'Arjun Reddy', 'Male', 28, 'Hyderabad', '2025-01-03');
INSERT INTO patients VALUES (4, 'Lakshmi', 'Female', 60, 'Nellore', '2025-01-04');
INSERT INTO patients VALUES (5, 'Manoj', 'Male', 22, 'Tirupati', '2025-01-05');
INSERT INTO patients VALUES (6, 'Divya Sharma', 'Female', 35, 'Vijayawada', '2025-01-06');
INSERT INTO patients VALUES (7, 'Kiran Rao', 'Male', 50, 'Guntur', '2025-01-07');
INSERT INTO patients VALUES (8, 'Anitha Reddy', 'Female', 40, 'Hyderabad', '2025-01-08');
INSERT INTO patients VALUES (9, 'Ramesh Naidu', 'Male', 55, 'Nellore', '2025-01-09');
INSERT INTO patients VALUES (10, 'Priya Singh', 'Female', 29, 'Tirupati', '2025-01-10');
INSERT INTO patients VALUES (11, 'Suresh Babu', 'Male', 48, 'Vijayawada', '2025-01-11');
INSERT INTO patients VALUES (12, 'Deepika', 'Female', 26, 'Guntur', '2025-01-12');
INSERT INTO patients VALUES (13, 'Vikram', 'Male', 37, 'Hyderabad', '2025-01-13');
INSERT INTO patients VALUES (14, 'Kavya', 'Female', 31, 'Nellore', '2025-01-14');
INSERT INTO patients VALUES (15, 'Rohit', 'Male', 24, 'Tirupati', '2025-01-15');
INSERT INTO patients VALUES (16, 'Meena', 'Female', 44, 'Vijayawada', '2025-01-16');
INSERT INTO patients VALUES (17, 'Sanjay', 'Male', 52, 'Guntur', '2025-01-17');
INSERT INTO patients VALUES (18, 'Bhavani', 'Female', 38, 'Hyderabad', '2025-01-18');
INSERT INTO patients VALUES (19, 'Naresh', 'Male', 60, 'Nellore', '2025-01-19');
INSERT INTO patients VALUES (20, 'Swapna', 'Female', 27, 'Tirupati', '2025-01-20');
INSERT INTO patients VALUES (21, 'Ajay', 'Male', 33, 'Vijayawada', '2025-01-21');
INSERT INTO patients VALUES (22, 'Sneha', 'Female', 30, 'Guntur', '2025-01-22');
INSERT INTO patients VALUES (23, 'Mahesh', 'Male', 41, 'Hyderabad', '2025-01-23');
INSERT INTO patients VALUES (24, 'Divya Reddy', 'Female', 36, 'Nellore', '2025-01-24');
INSERT INTO patients VALUES (25, 'Praveen', 'Male', 29, 'Tirupati', '2025-01-25');
INSERT INTO patients VALUES (26, 'Swathi', 'Female', 25, 'Vijayawada', '2025-01-26');
INSERT INTO patients VALUES (27, 'Harish', 'Male', 47, 'Guntur', '2025-01-27');
INSERT INTO patients VALUES (28, 'Anusha', 'Female', 34, 'Hyderabad', '2025-01-28');
INSERT INTO patients VALUES (29, 'Naveen', 'Male', 39, 'Nellore', '2025-01-29');
INSERT INTO patients VALUES (30, 'Keerthi', 'Female', 28, 'Tirupati', '2025-01-30');
INSERT INTO patients VALUES (31, 'Rakesh', 'Male', 53, 'Vijayawada', '2025-01-31');
INSERT INTO patients VALUES (32, 'Pooja', 'Female', 23, 'Guntur', '2025-02-01');
INSERT INTO patients VALUES (33, 'Sai Kumar', 'Male', 46, 'Hyderabad', '2025-02-02');
INSERT INTO patients VALUES (34, 'Latha', 'Female', 42, 'Nellore', '2025-02-03');
INSERT INTO patients VALUES (35, 'Vamsi', 'Male', 27, 'Tirupati', '2025-02-04');
INSERT INTO patients VALUES (36, 'Bhargavi', 'Female', 31, 'Vijayawada', '2025-02-05');
INSERT INTO patients VALUES (37, 'Chaitanya', 'Male', 36, 'Guntur', '2025-02-06');
INSERT INTO patients VALUES (38, 'Harika', 'Female', 29, 'Hyderabad', '2025-02-07');
INSERT INTO patients VALUES (39, 'Dinesh', 'Male', 45, 'Nellore', '2025-02-08');
INSERT INTO patients VALUES (40, 'Reshma', 'Female', 33, 'Tirupati', '2025-02-09');
INSERT INTO patients VALUES (41, 'Karthik', 'Male', 38, 'Vijayawada', '2025-02-10');
INSERT INTO patients VALUES (42, 'Lavanya', 'Female', 26, 'Guntur', '2025-02-11');
INSERT INTO patients VALUES (43, 'Ganesh', 'Male', 49, 'Hyderabad', '2025-02-12');
INSERT INTO patients VALUES (44, 'Aishwarya', 'Female', 32, 'Nellore', '2025-02-13');
INSERT INTO patients VALUES (45, 'Mohan', 'Male', 54, 'Tirupati', '2025-02-14');
INSERT INTO patients VALUES (46, 'Tejaswi', 'Female', 27, 'Vijayawada', '2025-02-15');
INSERT INTO patients VALUES (47, 'Rahul', 'Male', 35, 'Guntur', '2025-02-16');
INSERT INTO patients VALUES (48, 'Nandini', 'Female', 30, 'Hyderabad', '2025-02-17');
INSERT INTO patients VALUES (49, 'Srikanth', 'Male', 40, 'Nellore', '2025-02-18');
INSERT INTO patients VALUES (50, 'Geetha', 'Female', 37, 'Tirupati', '2025-02-19');
INSERT INTO patients VALUES (51, 'Harsha', 'Male', 41, 'Vijayawada', '2025-02-20');
INSERT INTO patients VALUES (52, 'Keerthana', 'Female', 28, 'Guntur', '2025-02-21');
INSERT INTO patients VALUES (53, 'Raghav', 'Male', 36, 'Hyderabad', '2025-02-22');
INSERT INTO patients VALUES (54, 'Sravani', 'Female', 33, 'Nellore', '2025-02-23');
INSERT INTO patients VALUES (55, 'Lokesh', 'Male', 25, 'Tirupati', '2025-02-24');
INSERT INTO patients VALUES (56, 'Madhavi', 'Female', 39, 'Vijayawada', '2025-02-25');
INSERT INTO patients VALUES (57, 'Surya', 'Male', 52, 'Guntur', '2025-02-26');
INSERT INTO patients VALUES (58, 'Niharika', 'Female', 31, 'Hyderabad', '2025-02-27');
INSERT INTO patients VALUES (59, 'Varun', 'Male', 44, 'Nellore', '2025-02-28');
INSERT INTO patients VALUES (60, 'Anjali', 'Female', 27, 'Tirupati', '2025-03-01');
INSERT INTO patients VALUES (61, 'Sandeep', 'Male', 34, 'Vijayawada', '2025-03-02');
INSERT INTO patients VALUES (62, 'Divya Sri', 'Female', 29, 'Guntur', '2025-03-03');
INSERT INTO patients VALUES (63, 'Prasad', 'Male', 48, 'Hyderabad', '2025-03-04');
INSERT INTO patients VALUES (64, 'Ritika', 'Female', 32, 'Nellore', '2025-03-05');
INSERT INTO patients VALUES (65, 'Nikhil', 'Male', 26, 'Tirupati', '2025-03-06');
INSERT INTO patients VALUES (66, 'Swetha', 'Female', 37, 'Vijayawada', '2025-03-07');
INSERT INTO patients VALUES (67, 'Chandra', 'Male', 50, 'Guntur', '2025-03-08');
INSERT INTO patients VALUES (68, 'Meghana', 'Female', 30, 'Hyderabad', '2025-03-09');
INSERT INTO patients VALUES (69, 'Bharath', 'Male', 43, 'Nellore', '2025-03-10');
INSERT INTO patients VALUES (70, 'Pavani', 'Female', 28, 'Tirupati', '2025-03-11');
INSERT INTO patients VALUES (71, 'Kalyan', 'Male', 39, 'Vijayawada', '2025-03-12');
INSERT INTO patients VALUES (72, 'Sireesha', 'Female', 31, 'Guntur', '2025-03-13');
INSERT INTO patients VALUES (73, 'Yashwanth', 'Male', 45, 'Hyderabad', '2025-03-14');
INSERT INTO patients VALUES (74, 'Deepthi', 'Female', 34, 'Nellore', '2025-03-15');
INSERT INTO patients VALUES (75, 'Rohini', 'Female', 29, 'Tirupati', '2025-03-16');
INSERT INTO patients VALUES (76, 'Mahendra', 'Male', 55, 'Vijayawada', '2025-03-17');
INSERT INTO patients VALUES (77, 'Bhanu', 'Male', 42, 'Guntur', '2025-03-18');
INSERT INTO patients VALUES (78, 'Ananya', 'Female', 27, 'Hyderabad', '2025-03-19');
INSERT INTO patients VALUES (79, 'Gopal', 'Male', 38, 'Nellore', '2025-03-20');
INSERT INTO patients VALUES (80, 'Sandhya', 'Female', 33, 'Tirupati', '2025-03-21');
INSERT INTO patients VALUES (81, 'Sathish', 'Male', 46, 'Vijayawada', '2025-03-22');
INSERT INTO patients VALUES (82, 'Navya', 'Female', 30, 'Guntur', '2025-03-23');
INSERT INTO patients VALUES (83, 'Pranav', 'Male', 35, 'Hyderabad', '2025-03-24');
INSERT INTO patients VALUES (84, 'Sirisha', 'Female', 41, 'Nellore', '2025-03-25');
INSERT INTO patients VALUES (85, 'Teja', 'Male', 28, 'Tirupati', '2025-03-26');
INSERT INTO patients VALUES (86, 'Akhila', 'Female', 36, 'Vijayawada', '2025-03-27');
INSERT INTO patients VALUES (87, 'Vinay', 'Male', 49, 'Guntur', '2025-03-28');
INSERT INTO patients VALUES (88, 'Lasya', 'Female', 32, 'Hyderabad', '2025-03-29');
INSERT INTO patients VALUES (89, 'Manikanta', 'Male', 40, 'Nellore', '2025-03-30');
INSERT INTO patients VALUES (90, 'Usha', 'Female', 29, 'Tirupati', '2025-03-31');
INSERT INTO patients VALUES (91, 'Krishna', 'Male', 53, 'Vijayawada', '2025-04-01');
INSERT INTO patients VALUES (92, 'Bhavya', 'Female', 31, 'Guntur', '2025-04-02');
INSERT INTO patients VALUES (93, 'Naveen Kumar', 'Male', 44, 'Hyderabad', '2025-04-03');
INSERT INTO patients VALUES (94, 'Sushma', 'Female', 27, 'Nellore', '2025-04-04');
INSERT INTO patients VALUES (95, 'Lokitha', 'Female', 34, 'Tirupati', '2025-04-05');
INSERT INTO patients VALUES (96, 'Ravi Teja', 'Male', 38, 'Vijayawada', '2025-04-06');
INSERT INTO patients VALUES (97, 'Snehal', 'Female', 30, 'Guntur', '2025-04-07');
INSERT INTO patients VALUES (98, 'Aditya', 'Male', 29, 'Hyderabad', '2025-04-08');
INSERT INTO patients VALUES (99, 'Rameswari', 'Female', 42, 'Nellore', '2025-04-09');
INSERT INTO patients VALUES (100, 'Venkatesh', 'Male', 50, 'Tirupati', '2025-04-10');
INSERT INTO patients VALUES (101, 'Rajesh', 'Male', 37, 'Vijayawada', '2025-04-11');
INSERT INTO patients VALUES (102, 'Kavitha', 'Female', 29, 'Guntur', '2025-04-12');
INSERT INTO patients VALUES (103, 'Manoj Kumar', 'Male', 46, 'Hyderabad', '2025-04-13');
INSERT INTO patients VALUES (104, 'Sujatha', 'Female', 33, 'Nellore', '2025-04-14');
INSERT INTO patients VALUES (105, 'Vishnu', 'Male', 25, 'Tirupati', '2025-04-15');
INSERT INTO patients VALUES (106, 'Bhavana', 'Female', 38, 'Vijayawada', '2025-04-16');
INSERT INTO patients VALUES (107, 'Harsha Vardhan', 'Male', 52, 'Guntur', '2025-04-17');
INSERT INTO patients VALUES (108, 'Lalitha', 'Female', 31, 'Hyderabad', '2025-04-18');
INSERT INTO patients VALUES (109, 'Ravi Shankar', 'Male', 44, 'Nellore', '2025-04-19');
INSERT INTO patients VALUES (110, 'Divija', 'Female', 27, 'Tirupati', '2025-04-20');
INSERT INTO patients VALUES (111, 'Suresh Reddy', 'Male', 40, 'Vijayawada', '2025-04-21');
INSERT INTO patients VALUES (112, 'Ankitha', 'Female', 30, 'Guntur', '2025-04-22');
INSERT INTO patients VALUES (113, 'Chaitanya Kumar', 'Male', 35, 'Hyderabad', '2025-04-23');
INSERT INTO patients VALUES (114, 'Deepa', 'Female', 41, 'Nellore', '2025-04-24');
INSERT INTO patients VALUES (115, 'Prudhvi', 'Male', 28, 'Tirupati', '2025-04-25');
INSERT INTO patients VALUES (116, 'Shanthi', 'Female', 36, 'Vijayawada', '2025-04-26');
INSERT INTO patients VALUES (117, 'Sai Teja', 'Male', 49, 'Guntur', '2025-04-27');
INSERT INTO patients VALUES (118, 'Navya Sri', 'Female', 32, 'Hyderabad', '2025-04-28');
INSERT INTO patients VALUES (119, 'Raghuram', 'Male', 45, 'Nellore', '2025-04-29');
INSERT INTO patients VALUES (120, 'Lakshmi Devi', 'Female', 29, 'Tirupati', '2025-04-30');
INSERT INTO patients VALUES (121, 'Ajith', 'Male', 39, 'Vijayawada', '2025-05-01');
INSERT INTO patients VALUES (122, 'Bhargavi', 'Female', 31, 'Guntur', '2025-05-02');
INSERT INTO patients VALUES (123, 'Kiran Kumar', 'Male', 42, 'Hyderabad', '2025-05-03');
INSERT INTO patients VALUES (124, 'Reshma Reddy', 'Female', 34, 'Nellore', '2025-05-04');
INSERT INTO patients VALUES (125, 'Madhav', 'Male', 26, 'Tirupati', '2025-05-05');
INSERT INTO patients VALUES (126, 'Swapna', 'Female', 37, 'Vijayawada', '2025-05-06');
INSERT INTO patients VALUES (127, 'Rohith', 'Male', 50, 'Guntur', '2025-05-07');
INSERT INTO patients VALUES (128, 'Keerthana Reddy', 'Female', 28, 'Hyderabad', '2025-05-08');
INSERT INTO patients VALUES (129, 'Narasimha', 'Male', 43, 'Nellore', '2025-05-09');
INSERT INTO patients VALUES (130, 'Anusha Rani', 'Female', 33, 'Tirupati', '2025-05-10');
INSERT INTO patients VALUES (131, 'Venkat', 'Male', 47, 'Vijayawada', '2025-05-11');
INSERT INTO patients VALUES (132, 'Pavithra', 'Female', 30, 'Guntur', '2025-05-12');
INSERT INTO patients VALUES (133, 'Mahesh Babu', 'Male', 38, 'Hyderabad', '2025-05-13');
INSERT INTO patients VALUES (134, 'Harini', 'Female', 29, 'Nellore', '2025-05-14');
INSERT INTO patients VALUES (135, 'Nithin', 'Male', 35, 'Tirupati', '2025-05-15');
INSERT INTO patients VALUES (136, 'Sailaja', 'Female', 41, 'Vijayawada', '2025-05-16');
INSERT INTO patients VALUES (137, 'Dinesh Kumar', 'Male', 52, 'Guntur', '2025-05-17');
INSERT INTO patients VALUES (138, 'Divya Bharathi', 'Female', 27, 'Hyderabad', '2025-05-18');
INSERT INTO patients VALUES (139, 'Rakesh Reddy', 'Male', 44, 'Nellore', '2025-05-19');
INSERT INTO patients VALUES (140, 'Geetanjali', 'Female', 32, 'Tirupati', '2025-05-20');
INSERT INTO patients VALUES (141, 'Sandeep Kumar', 'Male', 36, 'Vijayawada', '2025-05-21');
INSERT INTO patients VALUES (142, 'Bhavani Prasad', 'Female', 28, 'Guntur', '2025-05-22');
INSERT INTO patients VALUES (143, 'Krishna Teja', 'Male', 40, 'Hyderabad', '2025-05-23');
INSERT INTO patients VALUES (144, 'Sneha Reddy', 'Female', 34, 'Nellore', '2025-05-24');
INSERT INTO patients VALUES (145, 'Ravi Kumar', 'Male', 45, 'Tirupati', '2025-05-25');
INSERT INTO patients VALUES (146, 'Anjali Devi', 'Female', 31, 'Vijayawada', '2025-05-26');
INSERT INTO patients VALUES (147, 'Chandra Sekhar', 'Male', 53, 'Guntur', '2025-05-27');
INSERT INTO patients VALUES (148, 'Haritha', 'Female', 29, 'Hyderabad', '2025-05-28');
INSERT INTO patients VALUES (149, 'Srinivas', 'Male', 48, 'Nellore', '2025-05-29');
INSERT INTO patients VALUES (150, 'Udaya', 'Female', 27, 'Tirupati', '2025-05-30');

/*inserting values into doctors*/
INSERT INTO doctors VALUES (1, 'Dr. Rajesh Sharma', 'Cardiology', 15);
INSERT INTO doctors VALUES (2, 'Dr. Meera Reddy', 'Neurology', 12);
INSERT INTO doctors VALUES (3, 'Dr. Srinivas Rao', 'Orthopedics', 10);
INSERT INTO doctors VALUES (4, 'Dr. Anil Kumar', 'General Medicine', 18);
INSERT INTO doctors VALUES (5, 'Dr. Kavitha Nair', 'Dermatology', 8);
INSERT INTO doctors VALUES (6, 'Dr. Praveen Kumar', 'ENT', 11);
INSERT INTO doctors VALUES (7, 'Dr. Lakshmi Devi', 'Pediatrics', 14);
INSERT INTO doctors VALUES (8, 'Dr. Venkatesh Babu', 'Cardiology', 20);
INSERT INTO doctors VALUES (9, 'Dr. Divya Reddy', 'Gynecology', 9);
INSERT INTO doctors VALUES (10, 'Dr. Harsha Vardhan', 'Neurology', 13);
INSERT INTO doctors VALUES (11, 'Dr. Suresh Babu', 'Orthopedics', 16);
INSERT INTO doctors VALUES (12, 'Dr. Anitha Sharma', 'General Medicine', 7);
INSERT INTO doctors VALUES (13, 'Dr. Kiran Kumar', 'Cardiology', 12);
INSERT INTO doctors VALUES (14, 'Dr. Swathi Rao', 'Dermatology', 6);
INSERT INTO doctors VALUES (15, 'Dr. Mahesh Reddy', 'Pediatrics', 10);
INSERT INTO doctors VALUES (16, 'Dr. Bhavani Devi', 'Gynecology', 15);
INSERT INTO doctors VALUES (17, 'Dr. Naveen Kumar', 'ENT', 9);
INSERT INTO doctors VALUES (18, 'Dr. Ramesh Naidu', 'Orthopedics', 17);
INSERT INTO doctors VALUES (19, 'Dr. Sneha Reddy', 'Neurology', 8);
INSERT INTO doctors VALUES (20, 'Dr. Arun Kumar', 'General Medicine', 14);

/*inserting values into appointments*/
INSERT INTO appointments VALUES (1, 1, 1, '2025-01-05', 'Heart Pain', 'Completed');
INSERT INTO appointments VALUES (2, 2, 2, '2025-01-06', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (3, 3, 3, '2025-01-07', 'Fracture', 'Pending');
INSERT INTO appointments VALUES (4, 4, 4, '2025-01-08', 'Fever', 'Completed');
INSERT INTO appointments VALUES (5, 5, 5, '2025-01-09', 'Skin Allergy', 'Completed');
INSERT INTO appointments VALUES (6, 6, 6, '2025-01-10', 'Ear Infection', 'Completed');
INSERT INTO appointments VALUES (7, 7, 7, '2025-01-11', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (8, 8, 8, '2025-01-12', 'Chest Pain', 'Completed');
INSERT INTO appointments VALUES (9, 9, 9, '2025-01-13', 'Pregnancy Checkup', 'Completed');
INSERT INTO appointments VALUES (10, 10, 10, '2025-01-14', 'Headache', 'Pending');
INSERT INTO appointments VALUES (11, 11, 11, '2025-01-15', 'Knee Pain', 'Completed');
INSERT INTO appointments VALUES (12, 12, 12, '2025-01-16', 'Cold', 'Completed');
INSERT INTO appointments VALUES (13, 13, 13, '2025-01-17', 'Heart Checkup', 'Completed');
INSERT INTO appointments VALUES (14, 14, 14, '2025-01-18', 'Skin Rash', 'Completed');
INSERT INTO appointments VALUES (15, 15, 15, '2025-01-19', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (16, 16, 16, '2025-01-20', 'Pregnancy Care', 'Completed');
INSERT INTO appointments VALUES (17, 17, 17, '2025-01-21', 'ENT Infection', 'Pending');
INSERT INTO appointments VALUES (18, 18, 18, '2025-01-22', 'Back Pain', 'Completed');
INSERT INTO appointments VALUES (19, 19, 19, '2025-01-23', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (20, 20, 20, '2025-01-24', 'Fever', 'Completed');
INSERT INTO appointments VALUES (21, 21, 1, '2025-01-25', 'Heart Pain', 'Completed');
INSERT INTO appointments VALUES (22, 22, 2, '2025-01-26', 'Headache', 'Completed');
INSERT INTO appointments VALUES (23, 23, 3, '2025-01-27', 'Fracture', 'Completed');
INSERT INTO appointments VALUES (24, 24, 4, '2025-01-28', 'Fever', 'Completed');
INSERT INTO appointments VALUES (25, 25, 5, '2025-01-29', 'Skin Allergy', 'Pending');
INSERT INTO appointments VALUES (26, 26, 6, '2025-01-30', 'Ear Infection', 'Completed');
INSERT INTO appointments VALUES (27, 27, 7, '2025-01-31', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (28, 28, 8, '2025-02-01', 'Chest Pain', 'Completed');
INSERT INTO appointments VALUES (29, 29, 9, '2025-02-02', 'Pregnancy Checkup', 'Completed');
INSERT INTO appointments VALUES (30, 30, 10, '2025-02-03', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (31, 31, 11, '2025-02-04', 'Knee Pain', 'Completed');
INSERT INTO appointments VALUES (32, 32, 12, '2025-02-05', 'Cold', 'Completed');
INSERT INTO appointments VALUES (33, 33, 13, '2025-02-06', 'Heart Checkup', 'Completed');
INSERT INTO appointments VALUES (34, 34, 14, '2025-02-07', 'Skin Rash', 'Pending');
INSERT INTO appointments VALUES (35, 35, 15, '2025-02-08', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (36, 36, 16, '2025-02-09', 'Pregnancy Care', 'Completed');
INSERT INTO appointments VALUES (37, 37, 17, '2025-02-10', 'ENT Infection', 'Completed');
INSERT INTO appointments VALUES (38, 38, 18, '2025-02-11', 'Back Pain', 'Completed');
INSERT INTO appointments VALUES (39, 39, 19, '2025-02-12', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (40, 40, 20, '2025-02-13', 'Fever', 'Completed');
INSERT INTO appointments VALUES (41, 41, 1, '2025-02-14', 'Heart Pain', 'Completed');
INSERT INTO appointments VALUES (42, 42, 2, '2025-02-15', 'Headache', 'Completed');
INSERT INTO appointments VALUES (43, 43, 3, '2025-02-16', 'Fracture', 'Pending');
INSERT INTO appointments VALUES (44, 44, 4, '2025-02-17', 'Fever', 'Completed');
INSERT INTO appointments VALUES (45, 45, 5, '2025-02-18', 'Skin Allergy', 'Completed');
INSERT INTO appointments VALUES (46, 46, 6, '2025-02-19', 'Ear Infection', 'Completed');
INSERT INTO appointments VALUES (47, 47, 7, '2025-02-20', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (48, 48, 8, '2025-02-21', 'Chest Pain', 'Completed');
INSERT INTO appointments VALUES (49, 49, 9, '2025-02-22', 'Pregnancy Checkup', 'Completed');
INSERT INTO appointments VALUES (50, 50, 10, '2025-02-23', 'Migraine', 'Pending');
INSERT INTO appointments VALUES (51, 51, 11, '2025-02-24', 'Knee Pain', 'Completed');
INSERT INTO appointments VALUES (52, 52, 12, '2025-02-25', 'Cold', 'Completed');
INSERT INTO appointments VALUES (53, 53, 13, '2025-02-26', 'Heart Checkup', 'Completed');
INSERT INTO appointments VALUES (54, 54, 14, '2025-02-27', 'Skin Rash', 'Pending');
INSERT INTO appointments VALUES (55, 55, 15, '2025-02-28', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (56, 56, 16, '2025-03-01', 'Pregnancy Care', 'Completed');
INSERT INTO appointments VALUES (57, 57, 17, '2025-03-02', 'ENT Infection', 'Completed');
INSERT INTO appointments VALUES (58, 58, 18, '2025-03-03', 'Back Pain', 'Completed');
INSERT INTO appointments VALUES (59, 59, 19, '2025-03-04', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (60, 60, 20, '2025-03-05', 'Fever', 'Completed');
INSERT INTO appointments VALUES (61, 61, 1, '2025-03-06', 'Heart Pain', 'Completed');
INSERT INTO appointments VALUES (62, 62, 2, '2025-03-07', 'Headache', 'Completed');
INSERT INTO appointments VALUES (63, 63, 3, '2025-03-08', 'Fracture', 'Completed');
INSERT INTO appointments VALUES (64, 64, 4, '2025-03-09', 'Fever', 'Completed');
INSERT INTO appointments VALUES (65, 65, 5, '2025-03-10', 'Skin Allergy', 'Completed');
INSERT INTO appointments VALUES (66, 66, 6, '2025-03-11', 'Ear Infection', 'Completed');
INSERT INTO appointments VALUES (67, 67, 7, '2025-03-12', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (68, 68, 8, '2025-03-13', 'Chest Pain', 'Completed');
INSERT INTO appointments VALUES (69, 69, 9, '2025-03-14', 'Pregnancy Checkup', 'Completed');
INSERT INTO appointments VALUES (70, 70, 10, '2025-03-15', 'Migraine', 'Pending');
INSERT INTO appointments VALUES (71, 71, 11, '2025-03-16', 'Knee Pain', 'Completed');
INSERT INTO appointments VALUES (72, 72, 12, '2025-03-17', 'Cold', 'Completed');
INSERT INTO appointments VALUES (73, 73, 13, '2025-03-18', 'Heart Checkup', 'Completed');
INSERT INTO appointments VALUES (74, 74, 14, '2025-03-19', 'Skin Rash', 'Completed');
INSERT INTO appointments VALUES (75, 75, 15, '2025-03-20', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (76, 76, 16, '2025-03-21', 'Pregnancy Care', 'Completed');
INSERT INTO appointments VALUES (77, 77, 17, '2025-03-22', 'ENT Infection', 'Pending');
INSERT INTO appointments VALUES (78, 78, 18, '2025-03-23', 'Back Pain', 'Completed');
INSERT INTO appointments VALUES (79, 79, 19, '2025-03-24', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (80, 80, 20, '2025-03-25', 'Fever', 'Completed');
INSERT INTO appointments VALUES (81, 81, 1, '2025-03-26', 'Heart Pain', 'Completed');
INSERT INTO appointments VALUES (82, 82, 2, '2025-03-27', 'Headache', 'Completed');
INSERT INTO appointments VALUES (83, 83, 3, '2025-03-28', 'Fracture', 'Completed');
INSERT INTO appointments VALUES (84, 84, 4, '2025-03-29', 'Fever', 'Pending');
INSERT INTO appointments VALUES (85, 85, 5, '2025-03-30', 'Skin Allergy', 'Completed');
INSERT INTO appointments VALUES (86, 86, 6, '2025-03-31', 'Ear Infection', 'Completed');
INSERT INTO appointments VALUES (87, 87, 7, '2025-04-01', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (88, 88, 8, '2025-04-02', 'Chest Pain', 'Completed');
INSERT INTO appointments VALUES (89, 89, 9, '2025-04-03', 'Pregnancy Checkup', 'Completed');
INSERT INTO appointments VALUES (90, 90, 10, '2025-04-04', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (91, 91, 11, '2025-04-05', 'Knee Pain', 'Completed');
INSERT INTO appointments VALUES (92, 92, 12, '2025-04-06', 'Cold', 'Completed');
INSERT INTO appointments VALUES (93, 93, 13, '2025-04-07', 'Heart Checkup', 'Completed');
INSERT INTO appointments VALUES (94, 94, 14, '2025-04-08', 'Skin Rash', 'Completed');
INSERT INTO appointments VALUES (95, 95, 15, '2025-04-09', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (96, 96, 16, '2025-04-10', 'Pregnancy Care', 'Completed');
INSERT INTO appointments VALUES (97, 97, 17, '2025-04-11', 'ENT Infection', 'Completed');
INSERT INTO appointments VALUES (98, 98, 18, '2025-04-12', 'Back Pain', 'Completed');
INSERT INTO appointments VALUES (99, 99, 19, '2025-04-13', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (100, 100, 20, '2025-04-14', 'Fever', 'Pending');
INSERT INTO appointments VALUES (101, 101, 1, '2025-04-15', 'Heart Pain', 'Completed');
INSERT INTO appointments VALUES (102, 102, 2, '2025-04-16', 'Headache', 'Completed');
INSERT INTO appointments VALUES (103, 103, 3, '2025-04-17', 'Fracture', 'Completed');
INSERT INTO appointments VALUES (104, 104, 4, '2025-04-18', 'Fever', 'Completed');
INSERT INTO appointments VALUES (105, 105, 5, '2025-04-19', 'Skin Allergy', 'Pending');
INSERT INTO appointments VALUES (106, 106, 6, '2025-04-20', 'Ear Infection', 'Completed');
INSERT INTO appointments VALUES (107, 107, 7, '2025-04-21', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (108, 108, 8, '2025-04-22', 'Chest Pain', 'Completed');
INSERT INTO appointments VALUES (109, 109, 9, '2025-04-23', 'Pregnancy Checkup', 'Completed');
INSERT INTO appointments VALUES (110, 110, 10, '2025-04-24', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (111, 111, 11, '2025-04-25', 'Knee Pain', 'Completed');
INSERT INTO appointments VALUES (112, 112, 12, '2025-04-26', 'Cold', 'Completed');
INSERT INTO appointments VALUES (113, 113, 13, '2025-04-27', 'Heart Checkup', 'Completed');
INSERT INTO appointments VALUES (114, 114, 14, '2025-04-28', 'Skin Rash', 'Pending');
INSERT INTO appointments VALUES (115, 115, 15, '2025-04-29', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (116, 116, 16, '2025-04-30', 'Pregnancy Care', 'Completed');
INSERT INTO appointments VALUES (117, 117, 17, '2025-05-01', 'ENT Infection', 'Completed');
INSERT INTO appointments VALUES (118, 118, 18, '2025-05-02', 'Back Pain', 'Completed');
INSERT INTO appointments VALUES (119, 119, 19, '2025-05-03', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (120, 120, 20, '2025-05-04', 'Fever', 'Completed');
INSERT INTO appointments VALUES (121, 121, 1, '2025-05-05', 'Heart Pain', 'Completed');
INSERT INTO appointments VALUES (122, 122, 2, '2025-05-06', 'Headache', 'Completed');
INSERT INTO appointments VALUES (123, 123, 3, '2025-05-07', 'Fracture', 'Completed');
INSERT INTO appointments VALUES (124, 124, 4, '2025-05-08', 'Fever', 'Completed');
INSERT INTO appointments VALUES (125, 125, 5, '2025-05-09', 'Skin Allergy', 'Pending');
INSERT INTO appointments VALUES (126, 126, 6, '2025-05-10', 'Ear Infection', 'Completed');
INSERT INTO appointments VALUES (127, 127, 7, '2025-05-11', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (128, 128, 8, '2025-05-12', 'Chest Pain', 'Completed');
INSERT INTO appointments VALUES (129, 129, 9, '2025-05-13', 'Pregnancy Checkup', 'Completed');
INSERT INTO appointments VALUES (130, 130, 10, '2025-05-14', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (131, 131, 11, '2025-05-15', 'Knee Pain', 'Completed');
INSERT INTO appointments VALUES (132, 132, 12, '2025-05-16', 'Cold', 'Completed');
INSERT INTO appointments VALUES (133, 133, 13, '2025-05-17', 'Heart Checkup', 'Completed');
INSERT INTO appointments VALUES (134, 134, 14, '2025-05-18', 'Skin Rash', 'Completed');
INSERT INTO appointments VALUES (135, 135, 15, '2025-05-19', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (136, 136, 16, '2025-05-20', 'Pregnancy Care', 'Completed');
INSERT INTO appointments VALUES (137, 137, 17, '2025-05-21', 'ENT Infection', 'Completed');
INSERT INTO appointments VALUES (138, 138, 18, '2025-05-22', 'Back Pain', 'Completed');
INSERT INTO appointments VALUES (139, 139, 19, '2025-05-23', 'Migraine', 'Completed');
INSERT INTO appointments VALUES (140, 140, '20', '2025-05-24', 'Fever', 'Pending');
INSERT INTO appointments VALUES (141, 141, 1, '2025-05-25', 'Heart Pain', 'Completed');
INSERT INTO appointments VALUES (142, 142, 2, '2025-05-26', 'Headache', 'Completed');
INSERT INTO appointments VALUES (143, 143, 3, '2025-05-27', 'Fracture', 'Completed');
INSERT INTO appointments VALUES (144, 144, 4, '2025-05-28', 'Fever', 'Completed');
INSERT INTO appointments VALUES (145, 145, 5, '2025-05-29', 'Skin Allergy', 'Completed');
INSERT INTO appointments VALUES (146, 146, 6, '2025-05-30', 'Ear Infection', 'Completed');
INSERT INTO appointments VALUES (147, 147, 7, '2025-05-31', 'Child Fever', 'Completed');
INSERT INTO appointments VALUES (148, 148, 8, '2025-06-01', 'Chest Pain', 'Completed');
INSERT INTO appointments VALUES (149, 149, 9, '2025-06-02', 'Pregnancy Checkup', 'Completed');
INSERT INTO appointments VALUES (150, 150, 10, '2025-06-03', 'Migraine', 'Completed');

/*insert values into treatement*/
INSERT INTO treatments VALUES (1, 1, 'ECG', 1500);
INSERT INTO treatments VALUES (2, 2, 'MRI Scan', 6000);
INSERT INTO treatments VALUES (3, 3, 'X-Ray', 800);
INSERT INTO treatments VALUES (4, 4, 'Blood Test', 500);
INSERT INTO treatments VALUES (5, 5, 'Skin Therapy', 2000);
INSERT INTO treatments VALUES (6, 6, 'Ear Cleaning', 700);
INSERT INTO treatments VALUES (7, 7, 'Pediatric Checkup', 600);
INSERT INTO treatments VALUES (8, 8, 'Angiography', 12000);
INSERT INTO treatments VALUES (9, 9, 'Pregnancy Scan', 3000);
INSERT INTO treatments VALUES (10, 10, 'Pain Relief Injection', 400);
INSERT INTO treatments VALUES (11, 11, 'Physiotherapy', 2500);
INSERT INTO treatments VALUES (12, 12, 'Cold Treatment', 300);
INSERT INTO treatments VALUES (13, 13, 'ECG', 1500);
INSERT INTO treatments VALUES (14, 14, 'Skin Cream Therapy', 900);
INSERT INTO treatments VALUES (15, 15, 'Child Vaccination', 1200);
INSERT INTO treatments VALUES (16, 16, 'Pregnancy Consultation', 2000);
INSERT INTO treatments VALUES (17, 17, 'ENT Checkup', 1000);
INSERT INTO treatments VALUES (18, 18, 'Spine Therapy', 3500);
INSERT INTO treatments VALUES (19, 19, 'Migraine Treatment', 1800);
INSERT INTO treatments VALUES (20, 20, 'Fever Medication', 400);
INSERT INTO treatments VALUES (21, 21, 'ECG', 1500);
INSERT INTO treatments VALUES (22, 22, 'Headache Injection', 600);
INSERT INTO treatments VALUES (23, 23, 'Fracture Casting', 5000);
INSERT INTO treatments VALUES (24, 24, 'Blood Test', 500);
INSERT INTO treatments VALUES (25, 25, 'Skin Allergy Treatment', 2000);
INSERT INTO treatments VALUES (26, 26, 'Ear Drop Treatment', 800);
INSERT INTO treatments VALUES (27, 27, 'Child Fever Care', 700);
INSERT INTO treatments VALUES (28, 28, 'Cardiac Checkup', 2500);
INSERT INTO treatments VALUES (29, 29, 'Pregnancy Ultrasound', 3200);
INSERT INTO treatments VALUES (30, 30, 'Migraine Therapy', 1700);
INSERT INTO treatments VALUES (31, 31, 'Knee Pain Therapy', 2600);
INSERT INTO treatments VALUES (32, 32, 'Cold Medicine', 300);
INSERT INTO treatments VALUES (33, 33, 'ECG', 1500);
INSERT INTO treatments VALUES (34, 34, 'Skin Treatment', 2100);
INSERT INTO treatments VALUES (35, 35, 'Child Vaccination', 1200);
INSERT INTO treatments VALUES (36, 36, 'Pregnancy Checkup', 2000);
INSERT INTO treatments VALUES (37, 37, 'ENT Surgery Consultation', 5000);
INSERT INTO treatments VALUES (38, 38, 'Back Pain Therapy', 3000);
INSERT INTO treatments VALUES (39, 39, 'Migraine Scan', 2200);
INSERT INTO treatments VALUES (40, 40, 'Fever Injection', 400);
INSERT INTO treatments VALUES (41, 41, 'ECG', 1500);
INSERT INTO treatments VALUES (42, 42, 'Headache Injection', 600);
INSERT INTO treatments VALUES (43, 43, 'Fracture Surgery', 15000);
INSERT INTO treatments VALUES (44, 44, 'Blood Test', 500);
INSERT INTO treatments VALUES (45, 45, 'Skin Allergy Cream', 1800);
INSERT INTO treatments VALUES (46, 46, 'Ear Infection Drops', 900);
INSERT INTO treatments VALUES (47, 47, 'Child Fever Syrup', 700);
INSERT INTO treatments VALUES (48, 48, 'Cardiac Monitoring', 2500);
INSERT INTO treatments VALUES (49, 49, 'Pregnancy Scan', 3200);
INSERT INTO treatments VALUES (50, 50, 'Migraine Therapy', 1700);
INSERT INTO treatments VALUES (51, 51, 'Knee Physiotherapy', 2600);
INSERT INTO treatments VALUES (52, 52, 'Cold Tablets', 300);
INSERT INTO treatments VALUES (53, 53, 'ECG', 1500);
INSERT INTO treatments VALUES (54, 54, 'Skin Rash Treatment', 2100);
INSERT INTO treatments VALUES (55, 55, 'Child Vaccination', 1200);
INSERT INTO treatments VALUES (56, 56, 'Pregnancy Consultation', 2000);
INSERT INTO treatments VALUES (57, 57, 'ENT Surgery Consultation', 5000);
INSERT INTO treatments VALUES (58, 58, 'Back Pain Therapy', 3000);
INSERT INTO treatments VALUES (59, 59, 'Migraine Scan', 2200);
INSERT INTO treatments VALUES (60, 60, 'Fever Injection', 400);
INSERT INTO treatments VALUES (61, 61, 'ECG', 1500);
INSERT INTO treatments VALUES (62, 62, 'Headache Injection', 600);
INSERT INTO treatments VALUES (63, 63, 'Fracture Casting', 5000);
INSERT INTO treatments VALUES (64, 64, 'Blood Test', 500);
INSERT INTO treatments VALUES (65, 65, 'Skin Allergy Treatment', 2000);
INSERT INTO treatments VALUES (66, 66, 'Ear Cleaning', 800);
INSERT INTO treatments VALUES (67, 67, 'Child Fever Care', 700);
INSERT INTO treatments VALUES (68, 68, 'Cardiac Checkup', 2500);
INSERT INTO treatments VALUES (69, 69, 'Pregnancy Ultrasound', 3200);
INSERT INTO treatments VALUES (70, 70, 'Migraine Therapy', 1700);
INSERT INTO treatments VALUES (71, 71, 'Knee Pain Therapy', 2600);
INSERT INTO treatments VALUES (72, 72, 'Cold Medicine', 300);
INSERT INTO treatments VALUES (73, 73, 'ECG', 1500);
INSERT INTO treatments VALUES (74, 74, 'Skin Treatment', 2100);
INSERT INTO treatments VALUES (75, 75, 'Child Vaccination', 1200);
INSERT INTO treatments VALUES (76, 76, 'Pregnancy Checkup', 2000);
INSERT INTO treatments VALUES (77, 77, 'ENT Surgery Consultation', 5000);
INSERT INTO treatments VALUES (78, 78, 'Back Pain Therapy', 3000);
INSERT INTO treatments VALUES (79, 79, 'Migraine Scan', 2200);
INSERT INTO treatments VALUES (80, 80, 'Fever Injection', 400);
INSERT INTO treatments VALUES (81, 81, 'ECG', 1500);
INSERT INTO treatments VALUES (82, 82, 'Headache Injection', 600);
INSERT INTO treatments VALUES (83, 83, 'Fracture Casting', 5000);
INSERT INTO treatments VALUES (84, 84, 'Blood Test', 500);
INSERT INTO treatments VALUES (85, 85, 'Skin Allergy Cream', 1800);
INSERT INTO treatments VALUES (86, 86, 'Ear Infection Drops', 900);
INSERT INTO treatments VALUES (87, 87, 'Child Fever Syrup', 700);
INSERT INTO treatments VALUES (88, 88, 'Cardiac Monitoring', 2500);
INSERT INTO treatments VALUES (89, 89, 'Pregnancy Scan', 3200);
INSERT INTO treatments VALUES (90, 90, 'Migraine Therapy', 1700);
INSERT INTO treatments VALUES (91, 91, 'Knee Physiotherapy', 2600);
INSERT INTO treatments VALUES (92, 92, 'Cold Tablets', 300);
INSERT INTO treatments VALUES (93, 93, 'ECG', 1500);
INSERT INTO treatments VALUES (94, 94, 'Skin Rash Treatment', 2100);
INSERT INTO treatments VALUES (95, 95, 'Child Vaccination', 1200);
INSERT INTO treatments VALUES (96, 96, 'Pregnancy Consultation', 2000);
INSERT INTO treatments VALUES (97, 97, 'ENT Surgery Consultation', 5000);
INSERT INTO treatments VALUES (98, 98, 'Back Pain Therapy', 3000);
INSERT INTO treatments VALUES (99, 99, 'Migraine Scan', 2200);
INSERT INTO treatments VALUES (100, 100, 'Fever Injection', 400);
INSERT INTO treatments VALUES (101, 101, 'ECG', 1500);
INSERT INTO treatments VALUES (102, 102, 'Headache Injection', 600);
INSERT INTO treatments VALUES (103, 103, 'Fracture Surgery', 15000);
INSERT INTO treatments VALUES (104, 104, 'Blood Test', 500);
INSERT INTO treatments VALUES (105, 105, 'Skin Allergy Treatment', 2000);
INSERT INTO treatments VALUES (106, 106, 'Ear Cleaning', 800);
INSERT INTO treatments VALUES (107, 107, 'Child Fever Care', 700);
INSERT INTO treatments VALUES (108, 108, 'Cardiac Checkup', 2500);
INSERT INTO treatments VALUES (109, 109, 'Pregnancy Ultrasound', 3200);
INSERT INTO treatments VALUES (110, 110, 'Migraine Therapy', 1700);
INSERT INTO treatments VALUES (111, 111, 'Knee Pain Therapy', 2600);
INSERT INTO treatments VALUES (112, 112, 'Cold Medicine', 300);
INSERT INTO treatments VALUES (113, 113, 'ECG', 1500);
INSERT INTO treatments VALUES (114, 114, 'Skin Treatment', 2100);
INSERT INTO treatments VALUES (115, 115, 'Child Vaccination', 1200);
INSERT INTO treatments VALUES (116, 116, 'Pregnancy Checkup', 2000);
INSERT INTO treatments VALUES (117, 117, 'ENT Surgery Consultation', 5000);
INSERT INTO treatments VALUES (118, 118, 'Back Pain Therapy', 3000);
INSERT INTO treatments VALUES (119, 119, 'Migraine Scan', 2200);
INSERT INTO treatments VALUES (120, 120, 'Fever Injection', 400);

/*inserting values into billing table*/
INSERT INTO billing VALUES (1, 1, 1500, 'UPI', 'Paid', '2025-01-05');
INSERT INTO billing VALUES (2, 2, 6000, 'Card', 'Paid', '2025-01-06');
INSERT INTO billing VALUES (3, 3, 800, 'Cash', 'Pending', '2025-01-07');
INSERT INTO billing VALUES (4, 4, 500, 'UPI', 'Paid', '2025-01-08');
INSERT INTO billing VALUES (5, 5, 2000, 'NetBanking', 'Paid', '2025-01-09');
INSERT INTO billing VALUES (6, 6, 700, 'Cash', 'Paid', '2025-01-10');
INSERT INTO billing VALUES (7, 7, 600, 'UPI', 'Paid', '2025-01-11');
INSERT INTO billing VALUES (8, 8, 12000, 'Card', 'Paid', '2025-01-12');
INSERT INTO billing VALUES (9, 9, 3000, 'UPI', 'Paid', '2025-01-13');
INSERT INTO billing VALUES (10, 10, 400, 'Cash', 'Pending', '2025-01-14');
INSERT INTO billing VALUES (11, 11, 2500, 'Card', 'Paid', '2025-01-15');
INSERT INTO billing VALUES (12, 12, 300, 'Cash', 'Paid', '2025-01-16');
INSERT INTO billing VALUES (13, 13, 1500, 'UPI', 'Paid', '2025-01-17');
INSERT INTO billing VALUES (14, 14, 900, 'NetBanking', 'Paid', '2025-01-18');
INSERT INTO billing VALUES (15, 15, 1200, 'UPI', 'Paid', '2025-01-19');
INSERT INTO billing VALUES (16, 16, 2000, 'Card', 'Paid', '2025-01-20');
INSERT INTO billing VALUES (17, 17, 1000, 'Cash', 'Pending', '2025-01-21');
INSERT INTO billing VALUES (18, 18, 3500, 'UPI', 'Paid', '2025-01-22');
INSERT INTO billing VALUES (19, 19, 1800, 'NetBanking', 'Paid', '2025-01-23');
INSERT INTO billing VALUES (20, 20, 400, 'Cash', 'Paid', '2025-01-24');
INSERT INTO billing VALUES (21, 21, 1500, 'UPI', 'Paid', '2025-01-25');
INSERT INTO billing VALUES (22, 22, 600, 'Cash', 'Paid', '2025-01-26');
INSERT INTO billing VALUES (23, 23, 5000, 'Card', 'Paid', '2025-01-27');
INSERT INTO billing VALUES (24, 24, 500, 'UPI', 'Paid', '2025-01-28');
INSERT INTO billing VALUES (25, 25, 2000, 'NetBanking', 'Pending', '2025-01-29');
INSERT INTO billing VALUES (26, 26, 800, 'Cash', 'Paid', '2025-01-30');
INSERT INTO billing VALUES (27, 27, 700, 'UPI', 'Paid', '2025-01-31');
INSERT INTO billing VALUES (28, 28, 2500, 'Card', 'Paid', '2025-02-01');
INSERT INTO billing VALUES (29, 29, 3200, 'UPI', 'Paid', '2025-02-02');
INSERT INTO billing VALUES (30, 30, 1700, 'Cash', 'Paid', '2025-02-03');
INSERT INTO billing VALUES (31, 31, 2600, 'UPI', 'Paid', '2025-02-04');
INSERT INTO billing VALUES (32, 32, 300, 'Cash', 'Paid', '2025-02-05');
INSERT INTO billing VALUES (33, 33, 1500, 'Card', 'Paid', '2025-02-06');
INSERT INTO billing VALUES (34, 34, 2100, 'UPI', 'Pending', '2025-02-07');
INSERT INTO billing VALUES (35, 35, 1200, 'NetBanking', 'Paid', '2025-02-08');
INSERT INTO billing VALUES (36, 36, 2000, 'UPI', 'Paid', '2025-02-09');
INSERT INTO billing VALUES (37, 37, 5000, 'Card', 'Paid', '2025-02-10');
INSERT INTO billing VALUES (38, 38, 3000, 'Cash', 'Paid', '2025-02-11');
INSERT INTO billing VALUES (39, 39, 2200, 'UPI', 'Paid', '2025-02-12');
INSERT INTO billing VALUES (40, 40, 400, 'Cash', 'Paid', '2025-02-13');
INSERT INTO billing VALUES (41, 41, 1500, 'UPI', 'Paid', '2025-02-14');
INSERT INTO billing VALUES (42, 42, 600, 'Card', 'Paid', '2025-02-15');
INSERT INTO billing VALUES (43, 43, 15000, 'NetBanking', 'Pending', '2025-02-16');
INSERT INTO billing VALUES (44, 44, 500, 'Cash', 'Paid', '2025-02-17');
INSERT INTO billing VALUES (45, 45, 2000, 'UPI', 'Paid', '2025-02-18');
INSERT INTO billing VALUES (46, 46, 900, 'Cash', 'Paid', '2025-02-19');
INSERT INTO billing VALUES (47, 47, 700, 'UPI', 'Paid', '2025-02-20');
INSERT INTO billing VALUES (48, 48, 2500, 'Card', 'Paid', '2025-02-21');
INSERT INTO billing VALUES (49, 49, 3200, 'UPI', 'Paid', '2025-02-22');
INSERT INTO billing VALUES (50, 50, 1700, 'Cash', 'Pending', '2025-02-23');
INSERT INTO billing VALUES (51, 51, 2600, 'UPI', 'Paid', '2025-02-24');
INSERT INTO billing VALUES (52, 52, 300, 'Cash', 'Paid', '2025-02-25');
INSERT INTO billing VALUES (53, 53, 1500, 'Card', 'Paid', '2025-02-26');
INSERT INTO billing VALUES (54, 54, 2100, 'UPI', 'Pending', '2025-02-27');
INSERT INTO billing VALUES (55, 55, 1200, 'NetBanking', 'Paid', '2025-02-28');
INSERT INTO billing VALUES (56, 56, 2000, 'UPI', 'Paid', '2025-03-01');
INSERT INTO billing VALUES (57, 57, 5000, 'Card', 'Paid', '2025-03-02');
INSERT INTO billing VALUES (58, 58, 3000, 'Cash', 'Paid', '2025-03-03');
INSERT INTO billing VALUES (59, 59, 2200, 'UPI', 'Paid', '2025-03-04');
INSERT INTO billing VALUES (60, 60, 400, 'Cash', 'Paid', '2025-03-05');
INSERT INTO billing VALUES (61, 61, 1500, 'UPI', 'Paid', '2025-03-06');
INSERT INTO billing VALUES (62, 62, 600, 'Cash', 'Paid', '2025-03-07');
INSERT INTO billing VALUES (63, 63, 5000, 'Card', 'Paid', '2025-03-08');
INSERT INTO billing VALUES (64, 64, 500, 'UPI', 'Paid', '2025-03-09');
INSERT INTO billing VALUES (65, 65, 2000, 'NetBanking', 'Paid', '2025-03-10');
INSERT INTO billing VALUES (66, 66, 800, 'Cash', 'Paid', '2025-03-11');
INSERT INTO billing VALUES (67, 67, 700, 'UPI', 'Paid', '2025-03-12');
INSERT INTO billing VALUES (68, 68, 2500, 'Card', 'Paid', '2025-03-13');
INSERT INTO billing VALUES (69, 69, 3200, 'UPI', 'Paid', '2025-03-14');
INSERT INTO billing VALUES (70, 70, 1700, 'Cash', 'Pending', '2025-03-15');
INSERT INTO billing VALUES (71, 71, 2600, 'UPI', 'Paid', '2025-03-16');
INSERT INTO billing VALUES (72, 72, 300, 'Cash', 'Paid', '2025-03-17');
INSERT INTO billing VALUES (73, 73, 1500, 'Card', 'Paid', '2025-03-18');
INSERT INTO billing VALUES (74, 74, 2100, 'UPI', 'Paid', '2025-03-19');
INSERT INTO billing VALUES (75, 75, 1200, 'NetBanking', 'Paid', '2025-03-20');
INSERT INTO billing VALUES (76, 76, 2000, 'UPI', 'Paid', '2025-03-21');
INSERT INTO billing VALUES (77, 77, 5000, 'Card', 'Paid', '2025-03-22');
INSERT INTO billing VALUES (78, 78, 3000, 'Cash', 'Paid', '2025-03-23');
INSERT INTO billing VALUES (79, 79, 2200, 'UPI', 'Paid', '2025-03-24');
INSERT INTO billing VALUES (80, 80, 400, 'Cash', 'Paid', '2025-03-25');
INSERT INTO billing VALUES (81, 81, 1500, 'UPI', 'Paid', '2025-03-26');
INSERT INTO billing VALUES (82, 82, 600, 'Card', 'Paid', '2025-03-27');
INSERT INTO billing VALUES (83, 83, 15000, 'NetBanking', 'Pending', '2025-03-28');
INSERT INTO billing VALUES (84, 84, 500, 'Cash', 'Paid', '2025-03-29');
INSERT INTO billing VALUES (85, 85, 2000, 'UPI', 'Paid', '2025-03-30');
INSERT INTO billing VALUES (86, 86, 900, 'Cash', 'Paid', '2025-03-31');
INSERT INTO billing VALUES (87, 87, 700, 'UPI', 'Paid', '2025-04-01');
INSERT INTO billing VALUES (88, 88, 2500, 'Card', 'Paid', '2025-04-02');
INSERT INTO billing VALUES (89, 89, 3200, 'UPI', 'Paid', '2025-04-03');
INSERT INTO billing VALUES (90, 90, 1700, 'Cash', 'Paid', '2025-04-04');
INSERT INTO billing VALUES (91, 91, 2600, 'UPI', 'Paid', '2025-04-05');
INSERT INTO billing VALUES (92, 92, 300, 'Cash', 'Paid', '2025-04-06');
INSERT INTO billing VALUES (93, 93, 1500, 'Card', 'Paid', '2025-04-07');
INSERT INTO billing VALUES (94, 94, 2100, 'UPI', 'Paid', '2025-04-08');
INSERT INTO billing VALUES (95, 95, 1200, 'NetBanking', 'Paid', '2025-04-09');
INSERT INTO billing VALUES (96, 96, 2000, 'UPI', 'Paid', '2025-04-10');
INSERT INTO billing VALUES (97, 97, 5000, 'Card', 'Paid', '2025-04-11');
INSERT INTO billing VALUES (98, 98, 3000, 'Cash', 'Paid', '2025-04-12');
INSERT INTO billing VALUES (99, 99, 2200, 'UPI', 'Paid', '2025-04-13');
INSERT INTO billing VALUES (100, 100, 400, 'Cash', 'Pending', '2025-04-14');
INSERT INTO billing VALUES (101, 101, 1500, 'UPI', 'Paid', '2025-04-15');
INSERT INTO billing VALUES (102, 102, 600, 'Cash', 'Paid', '2025-04-16');
INSERT INTO billing VALUES (103, 103, 15000, 'NetBanking', 'Pending', '2025-04-17');
INSERT INTO billing VALUES (104, 104, 500, 'UPI', 'Paid', '2025-04-18');
INSERT INTO billing VALUES (105, 105, 2000, 'Card', 'Paid', '2025-04-19');
INSERT INTO billing VALUES (106, 106, 800, 'Cash', 'Paid', '2025-04-20');
INSERT INTO billing VALUES (107, 107, 700, 'UPI', 'Paid', '2025-04-21');
INSERT INTO billing VALUES (108, 108, 2500, 'Card', 'Paid', '2025-04-22');
INSERT INTO billing VALUES (109, 109, 3200, 'UPI', 'Paid', '2025-04-23');
INSERT INTO billing VALUES (110, 110, 1700, 'Cash', 'Paid', '2025-04-24');
INSERT INTO billing VALUES (111, 111, 2600, 'UPI', 'Paid', '2025-04-25');
INSERT INTO billing VALUES (112, 112, 300, 'Cash', 'Paid', '2025-04-26');
INSERT INTO billing VALUES (113, 113, 1500, 'Card', 'Paid', '2025-04-27');
INSERT INTO billing VALUES (114, 114, 2100, 'UPI', 'Pending', '2025-04-28');
INSERT INTO billing VALUES (115, 115, 1200, 'NetBanking', 'Paid', '2025-04-29');
INSERT INTO billing VALUES (116, 116, 2000, 'UPI', 'Paid', '2025-04-30');
INSERT INTO billing VALUES (117, 117, 5000, 'Card', 'Paid', '2025-05-01');
INSERT INTO billing VALUES (118, 118, 3000, 'Cash', 'Paid', '2025-05-02');
INSERT INTO billing VALUES (119, 119, 2200, 'UPI', 'Paid', '2025-05-03');
INSERT INTO billing VALUES (120, 120, 400, 'Cash', 'Paid', '2025-05-04');
INSERT INTO billing VALUES (121, 121, 1500, 'UPI', 'Paid', '2025-05-05');
INSERT INTO billing VALUES (122, 122, 600, 'Cash', 'Paid', '2025-05-06');
INSERT INTO billing VALUES (123, 123, 15000, 'NetBanking', 'Pending', '2025-05-07');
INSERT INTO billing VALUES (124, 124, 500, 'UPI', 'Paid', '2025-05-08');
INSERT INTO billing VALUES (125, 125, 2000, 'Card', 'Paid', '2025-05-09');
INSERT INTO billing VALUES (126, 126, 800, 'Cash', 'Paid', '2025-05-10');
INSERT INTO billing VALUES (127, 127, 700, 'UPI', 'Paid', '2025-05-11');
INSERT INTO billing VALUES (128, 128, 2500, 'Card', 'Paid', '2025-05-12');
INSERT INTO billing VALUES (129, 129, 3200, 'UPI', 'Paid', '2025-05-13');
INSERT INTO billing VALUES (130, 130, 1700, 'Cash', 'Paid', '2025-05-14');
INSERT INTO billing VALUES (131, 131, 2600, 'UPI', 'Paid', '2025-05-15');
INSERT INTO billing VALUES (132, 132, 300, 'Cash', 'Paid', '2025-05-16');
INSERT INTO billing VALUES (133, 133, 1500, 'Card', 'Paid', '2025-05-17');
INSERT INTO billing VALUES (134, 134, 2100, 'UPI', 'Paid', '2025-05-18');
INSERT INTO billing VALUES (135, 135, 1200, 'NetBanking', 'Paid', '2025-05-19');
INSERT INTO billing VALUES (136, 136, 2000, 'UPI', 'Paid', '2025-05-20');
INSERT INTO billing VALUES (137, 137, 5000, 'Card', 'Paid', '2025-05-21');
INSERT INTO billing VALUES (138, 138, 3000, 'Cash', 'Paid', '2025-05-22');
INSERT INTO billing VALUES (139, 139, 2200, 'UPI', 'Paid', '2025-05-23');
INSERT INTO billing VALUES (140, 140, 400, 'Cash', 'Pending', '2025-05-24');
INSERT INTO billing VALUES (141, 141, 1500, 'UPI', 'Paid', '2025-05-25');
INSERT INTO billing VALUES (142, 142, 600, 'Cash', 'Paid', '2025-05-26');
INSERT INTO billing VALUES (143, 143, 15000, 'NetBanking', 'Pending', '2025-05-27');
INSERT INTO billing VALUES (144, 144, 500, 'UPI', 'Paid', '2025-05-28');
INSERT INTO billing VALUES (145, 145, 2000, 'Card', 'Paid', '2025-05-29');
INSERT INTO billing VALUES (146, 146, 800, 'Cash', 'Paid', '2025-05-30');
INSERT INTO billing VALUES (147, 147, 700, 'UPI', 'Paid', '2025-05-31');
INSERT INTO billing VALUES (148, 148, 2500, 'Card', 'Paid', '2025-06-01');
INSERT INTO billing VALUES (149, 149, 3200, 'UPI', 'Paid', '2025-06-02');
INSERT INTO billing VALUES (150, 150, 1700, 'Cash', 'Paid', '2025-06-03');


select * from patients;
select * from doctors;
select * from appointments;
select * from treatments;
select * from billing;


/*REVENUE ANALYSIS*/
/*How much money hospital earned?*/
SELECT SUM(total_amount) AS total_revenue
FROM billing
WHERE payment_status = 'Paid';

/*Which month earned more?*/
SELECT 
    DATE_FORMAT(billing_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_revenue
FROM billing
WHERE payment_status = 'Paid'
GROUP BY DATE_FORMAT(billing_date, '%Y-%m')
ORDER BY month;

/*How much money hospital didn’t receive yet?*/
SELECT 
    payment_status,
    SUM(total_amount) AS total_amount
FROM billing
GROUP BY payment_status;

/*👉 “Which payment method brings more money?”*/
SELECT 
    payment_method,
    SUM(total_amount) AS revenue
FROM billing
WHERE payment_status = 'Paid'
GROUP BY payment_method
ORDER BY revenue DESC;

/*DOCTOR PERFORMANCE ANALYSIS*/
/*who is busiest doctor?*/
SELECT
    doctor_id,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY doctor_id
ORDER BY total_appointments DESC
LIMIT 1;

/*doctor with less patients*/
SELECT 
    doctor_id,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY doctor_id
ORDER BY total_appointments ASC
LIMIT 1;

/*how workload is speread across doctors?*/
SELECT 
    doctor_id,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY doctor_id
ORDER BY total_appointments DESC;

/*on average how many patients ecah doctor handels?*/
SELECT 
    AVG(appointment_count) AS avg_patients_per_doctor
FROM (
    SELECT doctor_id, COUNT(*) AS appointment_count
    FROM appointments
    GROUP BY doctor_id
) AS doctor_summary;

/*PATIENT ANALYSIS*/
/*How many patients are in hospital system?*/
SELECT COUNT(*) AS total_patients
FROM patients;

/*Who visits hospital most often?*/
SELECT 
    patient_id,
    COUNT(*) AS visit_count
FROM appointments
GROUP BY patient_id
ORDER BY visit_count DESC;

/*TOP 5 MOST FREQUENT PATIENTS*/
SELECT 
    patient_id,
    COUNT(*) AS visit_count
FROM appointments
GROUP BY patient_id
ORDER BY visit_count DESC
LIMIT 5;

/*TOP 5 HIGH SPENDERS*/
SELECT 
    patient_id,
    SUM(total_amount) AS total_spent
FROM billing
WHERE payment_status = 'Paid'
GROUP BY patient_id
ORDER BY total_spent DESC
limit 5;

/*AVERAGE SPENDING PER PATIENT*/
SELECT 
    patient_id,
    AVG(total_amount) AS avg_spending
FROM billing
GROUP BY patient_id;

/*TREATMENT ANALYSIS*/
/*TOP 5 MOST USED TREATMENTS*/
SELECT 
    treatment_name,
    COUNT(*) AS usage_count
FROM treatments
GROUP BY treatment_name
ORDER BY usage_count DESC
limit 5;

/*MOST EXPENSIVE TREATMENTS*/
SELECT *
FROM treatments
ORDER BY cost DESC
LIMIT 10;

/*MOST CHEPATEST TREATMENT*/
SELECT *
FROM treatments
ORDER BY cost ASC
LIMIT 10;

/*AVERAGE TREATMENT COST*/
SELECT AVG(cost) AS avg_treatment_cost
FROM treatments;

/*TOTAL REVENUE OF EACH TREATMENT*/
SELECT 
    treatment_name,
    SUM(cost) AS total_revenue
FROM treatments
GROUP BY treatment_name
ORDER BY total_revenue DESC;

/*PATIENT+TREATMENT AMALYSIS*/
SELECT 
    t.patient_id,
    t.treatment_name,
    t.cost
FROM treatments t;

/*HIGH VALUE TREATMENTS*/
SELECT 
    treatment_name,
    COUNT(*) AS times_used,
    SUM(cost) AS revenue_generated
FROM treatments
GROUP BY treatment_name
ORDER BY revenue_generated DESC;

/*PAYMENT ANALYSIS*/
/*“Which payment method patients prefer most?”*/
SELECT 
    payment_method,
    COUNT(*) AS usage_count
FROM billing
GROUP BY payment_method
ORDER BY usage_count DESC;

/*TOP PAYMENT METHOD*/
SELECT 
    payment_method
FROM billing
GROUP BY payment_method
ORDER BY COUNT(*) DESC
LIMIT 1;

/*How many bills are not paid?*/
SELECT 
    COUNT(*) AS pending_count
FROM billing
WHERE payment_status = 'Pending';

/*“Cash vs online payments comparison”*/
SELECT 
    CASE 
        WHEN payment_method = 'Cash' THEN 'Cash'
        ELSE 'Digital'
    END AS payment_type,
    COUNT(*) AS transactions,
    SUM(total_amount) AS total_amount
FROM billing
GROUP BY 
    CASE 
        WHEN payment_method = 'Cash' THEN 'Cash'
        ELSE 'Digital'
    END;






