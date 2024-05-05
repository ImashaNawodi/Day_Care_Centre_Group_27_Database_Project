CREATE DATABASE Day_Care_Center;
USE Day_Care_Center;

-- ----------------------------------
-- CREATING TABLES
-- ----------------------------------
-- EMPLOYEE TABLE:
CREATE TABLE Employee(
Employee_ID varchar(10) Not null,
Employee_Name varchar(50),
Supervisor_ID varchar(50),
Salary decimal(15,2),

primary key (Employee_ID)
);

INSERT INTO Employee (Employee_ID, Employee_Name, Supervisor_ID, Salary)
VALUES ('E001', 'Kasun', 'E001', 65000.00);
INSERT INTO Employee (Employee_ID, Employee_Name, Supervisor_ID, Salary)
VALUES ('E002', 'Maheshi', 'E005', 50000.00);
INSERT INTO Employee (Employee_ID, Employee_Name, Supervisor_ID, Salary)
VALUES ('E003', 'Pradeep', 'E005', 55000.00);
INSERT INTO Employee (Employee_ID, Employee_Name, Supervisor_ID, Salary)
VALUES ('E004', 'Lakshan', 'E005', 45000.00);
INSERT INTO Employee (Employee_ID, Employee_Name, Supervisor_ID, Salary)
VALUES ('E005', 'Thilini', 'E006', 60000.00);
INSERT INTO Employee (Employee_ID, Employee_Name, Supervisor_ID, Salary)
VALUES ('E006', 'Taniya', 'E001', 65000.00);
INSERT INTO Employee (Employee_ID, Employee_Name, Supervisor_ID, Salary)
VALUES ('E007', 'Tharaka', 'E005', 40000.00);
INSERT INTO Employee (Employee_ID, Employee_Name, Supervisor_ID, Salary)
VALUES ('E008', 'Mahesh', 'E005', 60000.00);

CREATE TABLE Employee_Contact_Details (
    Employee_ID varchar(10) NOT NULL,
    Phone_number int(10),
    Whatsapp_number int(10),
    Email varchar(50),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- Insert values into the Contact_Details table
INSERT INTO Employee_Contact_Details (Employee_ID, Phone_number, Whatsapp_number, Email)
VALUES ('E001', 763421254, 743674532, 'kasunjayasekara@gmail.com');
INSERT INTO Employee_Contact_Details (Employee_ID, Phone_number, Whatsapp_number, Email)
VALUES ('E002', 763489076, 763489076, 'maheshi345@gmail.com');
INSERT INTO Employee_Contact_Details (Employee_ID, Phone_number, Whatsapp_number, Email)
VALUES ('E003', 704296540, 743782145, 'pradeepkumara@gmail.com');
INSERT INTO Employee_Contact_Details (Employee_ID, Phone_number, Whatsapp_number, Email)
VALUES ('E004', 776589678, 742980765, 'lakshandissanayake89@gmail.com');
INSERT INTO Employee_Contact_Details (Employee_ID, Phone_number, Whatsapp_number, Email)
VALUES ('E005', 765741254, 765741254, 'thilinimadhushani@gmail.com');
INSERT INTO Employee_Contact_Details (Employee_ID, Phone_number, Whatsapp_number, Email)
VALUES ('E006', 718905430, 743321698, 'taniyasiriwardhana@gmail.com');
INSERT INTO Employee_Contact_Details (Employee_ID, Phone_number, Whatsapp_number, Email)
VALUES ('E007', 784532765, 784532765, 'tharakawijesinghe99@gmail.com');
INSERT INTO Employee_Contact_Details (Employee_ID, Phone_number, Whatsapp_number, Email)
VALUES ('E008', 746549087, 707864052, 'maheshkumara67@gmail.com');

CREATE TABLE Employee_Qualifications (
    Employee_ID varchar(10) NOT NULL,
    Secondary_Education varchar(50),
    Higher_Education varchar(50),
    Other_Qualifications varchar(100),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- Insert values into the Qualifications table
INSERT INTO Employee_Qualifications (Employee_ID, Secondary_Education, Higher_Education, Other_Qualifications)
VALUES ('E001', 'High School Diploma', 'Bachelor of Science in Computer Science', 'Certified Project Manager');
INSERT INTO Employee_Qualifications (Employee_ID, Secondary_Education, Higher_Education, Other_Qualifications)
VALUES ('E002', 'High School Diploma', 'Bachelor of Arts in English Literature', 'TESOL Certification');
INSERT INTO Employee_Qualifications (Employee_ID, Secondary_Education, Higher_Education, Other_Qualifications)
VALUES ('E003', 'High School Diploma', 'Master of Business Administration', 'Six Sigma Black Belt');
INSERT INTO Employee_Qualifications (Employee_ID, Secondary_Education, Higher_Education, Other_Qualifications)
VALUES ('E004', 'High School Diploma', 'Bachelor of Science in Electrical Engineering', 'Certified ScrumMaster');
INSERT INTO Employee_Qualifications (Employee_ID, Secondary_Education, Higher_Education, Other_Qualifications)
VALUES ('E005', 'High School Diploma', 'Bachelor of Arts in Psychology', 'Licensed Clinical Psychologist');
INSERT INTO Employee_Qualifications (Employee_ID, Secondary_Education, Higher_Education, Other_Qualifications)
VALUES ('E006', 'High School Diploma', 'Master of Science in Nursing', 'Registered Nurse (RN)');
INSERT INTO Employee_Qualifications (Employee_ID, Secondary_Education, Higher_Education, Other_Qualifications)
VALUES ('E007', 'High School Diploma', 'Bachelor of Science in Computer Science', 'Certified Information Systems Security Professional (CISSP)');
INSERT INTO Employee_Qualifications (Employee_ID, Secondary_Education, Higher_Education, Other_Qualifications)
VALUES ('E008', 'High School Diploma', 'Bachelor of Arts in History', 'Archivist Certification');


-- DAYCARE CENTER TABLE:
CREATE TABLE Daycare_Center(
    Reg_No varchar(25) NOT NULL,
    Name_ varchar(50),
    Contact_No varchar(25),
    Street varchar(25),
	City varchar(25),
    Province varchar(25),
    primary key (Reg_No)
);

INSERT INTO Daycare_Center(Reg_No,Name_,Contact_No,Street,City,Province)
VALUES   ('D1', 'ABC Daycare Center', '0356784531', '123 Main Street', 'Galle', 'Southern');
INSERT INTO Daycare_Center(Reg_No,Name_,Contact_No,Street,City,Province)
VALUES ('D2', 'Sunrise Childcare', '0712345678', '456 Ella Street', 'Colombo', 'Western');
INSERT INTO Daycare_Center(Reg_No,Name_,Contact_No,Street,City,Province)
VALUES ('D3', 'Little Explorers Preschool', '0777777777', '789 Vishaka Road', 'Kandy', 'Central');
INSERT INTO Daycare_Center(Reg_No,Name_,Contact_No,Street,City,Province)
VALUES ('D4', 'Happy Kids Daycare', '0355895155', '321 Grand Lane', 'Jaffna', 'Northern');
INSERT INTO Daycare_Center(Reg_No,Name_,Contact_No,Street,City,Province)
VALUES ('D5', 'Tiny Tots Nursery', '0778901234', '555 Central Road', 'Negombo', 'Western'); 
INSERT INTO Daycare_Center(Reg_No,Name_,Contact_No,Street,City,Province)
VALUES ('D6', 'Wonderland Daycare', '0765432109', '987 Maple Street', 'Matara', 'Southern'); 
INSERT INTO Daycare_Center(Reg_No,Name_,Contact_No,Street,City,Province)
VALUES ('D7', 'Sunshine Childrens Center', '0787654321', '222 Wakwella Road', 'Galle', 'Southern'); 

-- TOY TABLE:
CREATE TABLE Toy(
    Toy_no int Not Null,
    Toy_name varchar(25),
    Activity_name varchar(50),
    Purchase_date date,
    Suplier varchar(50),
    primary key (Toy_no)
);

INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (1, 'Colorful Blocks', 'Building and Stacking', '2023-01-15', 'ToyCo');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (2, 'Plush Teddy Bear', 'Cuddling and Comfort', '2022-11-20', 'ToyWorld');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (3, 'Educational Puzzle', 'Problem Solving', '2023-03-05', 'LearningToys Inc.');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (4, 'Crayon Set', 'Art and Creativity', '2022-12-10', 'ArtSupplies Co.');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (5, 'Musical Keyboard', 'Music Exploration', '2023-02-18', 'MelodyTunes');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (6, 'Sensory Balls', 'Tactile Exploration', '2023-01-25', 'SensoryPlay');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (7, 'Building Blocks', 'Creative Play', '2023-04-02', 'BlockCrafters');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (8, 'Storybooks Collection', 'Reading and Imagination', '2022-11-30', 'BookCorner');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (9, 'Play-Doh Set', 'Sculpting and Fine Motor Skills', '2023-02-08', 'DohPlay Inc.');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (10, 'Puppet Theater', 'Imaginative Play', '2023-03-12', 'PuppetWorld');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (11, 'Science Experiment Kit', 'Hands-On Learning', '2022-12-15', 'SciTech Labs');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (12, 'Toy Kitchen Set', 'Role-Playing and Social Skills', '2022-11-25', 'KidsCuisine');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (13, 'Bouncing Balls', 'Active Play', '2023-01-10', 'ActiveFun');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (14, 'Building Blocks', 'Construction and Engineering', '2023-02-28', 'Builders Inc.');
INSERT INTO Toy(Toy_no, Toy_name, Activity_name,Purchase_date,Suplier)
VALUES (15, 'Outdoor Play Equipment', 'Physical Activity', '2023-04-15', 'PlaygroundSupplies');

-- ACTIVITY TABLE:
CREATE TABLE Activity (
    Activity_no varchar(10) Not Null,
    Activity_name varchar(25),
    Activity_Description varchar(250),
    Employee_assigned varchar(50),
    primary key (Activity_no)
);

INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A001', 'Art and Craft', 'Children will create art using various materials such as paint, crayons, and paper.', 'Kasun Jayasekara');
INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A002', 'Storytime', 'Storytelling session with interactive stories and discussions.', 'Maheshi Silva');
INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A003', 'Outdoor Play', 'Children will have supervised outdoor playtime with games and activities.', 'Pradeep Kumara');
INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A004', 'Music and Dance', 'Exploring music through instruments, songs, and dance movements.', 'Lakshan Dissanayake');
INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A005', 'Science Experiments', 'Hands-on science experiments and demonstrations to foster curiosity.', 'Thilini Madhushani');
INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A006', 'Cooking and Baking', 'Simple cooking and baking activities to learn about food and measurements.', 'Taniya Sirwardhana');
INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A007', 'Sensory Play', 'Activities that engage the senses through textures, smells, and tastes.', 'Tharaka Wijesinghe');
INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A008', 'Math and Numbers', 'Basic math concepts through games and puzzles.', 'Mahesh Kumara');
INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A009', 'Physical Education', 'Physical activities and exercises to promote fitness and coordination.', 'Kasun Jayasekara');
INSERT INTO Activity(Activity_no, Activity_name, Activity_Description, Employee_assigned)
VALUES ('A010', 'Dramatic Play', 'Imaginative role-playing and creative storytelling.', 'Lakshan Dissanayake');

-- CHILD TABLE:
CREATE TABLE Child(
    Child_ID varchar(25) Not Null,
    First_name varchar(25),
    Last_Name varchar(25),
    DOB date,
    Gender varchar(10),
    Behaviour varchar(100),
    Food_prefer varchar(100),
    Napping_hours time,
    Other_updates varchar(100),
    primary key (Child_ID)
);



INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C001', 'John', 'Doe', '2015-06-01', 'Male', 'Calm and friendly', 'Vegetables', '02:00:00', 'Likes drawing');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C002', 'Emma', 'Smith', '2016-08-12', 'Female', 'Active and playful', 'Fruits', '01:30:00', 'Loves storytelling');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C003', 'Oliver', 'Johnson', '2015-10-20', 'Male', 'Quiet and shy', 'Pasta', '02:30:00', 'Enjoys reading');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C004', 'Ava', 'Williams', '2016-01-15', 'Female', 'Energetic and loud', 'Chicken', '01:00:00', 'Likes outdoor games');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C005', 'Sophia', 'Brown', '2015-04-30', 'Female', 'Friendly and helpful', 'Fish', '02:00:00', 'Enjoys painting');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C006', 'Mia', 'Jones', '2016-09-05', 'Female', 'Quiet and reserved', 'Rice', '01:30:00', 'Likes puzzles');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C007', 'Jackson', 'Miller', '2015-07-07', 'Male', 'Active and noisy', 'Bread', '02:00:00', 'Loves sports');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C008', 'Aiden', 'Davis', '2016-02-28', 'Male', 'Calm and observant', 'Eggs', '01:30:00', 'Enjoys music');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C009', 'Lucas', 'Garcia','2015-11-11', 'Male', 'Friendly and cheerful', 'Soup', '02:00:00', 'Likes dancing');
INSERT INTO Child (Child_ID, First_name, Last_Name,DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C010', 'Isabella', 'Rodriguez','2016-05-15', 'Female', 'Quiet and shy', 'Salad', '01:30:00', 'Enjoys crafts');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C011', 'Liam', 'Wilson', '2015-03-20', 'Male', 'Energetic and loud', 'Beef', '02:00:00', 'Loves running');
INSERT INTO Child (Child_ID, First_name, Last_Name,DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C012', 'Noah', 'Martinez', '2016-06-25', 'Male', 'Friendly and helpful', 'Pork', '01:30:00', 'Likes building blocks');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C013', 'Ethan', 'Anderson', '2015-12-12', 'Male', 'Quiet and reserved', 'Vegetables', '02:00:00', 'Enjoys drawing');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C014', 'Mason', 'Taylor', '2016-07-30', 'Male', 'Active and playful', 'Fruits', '01:30:00', 'Loves storytelling');
INSERT INTO Child (Child_ID, First_name, Last_Name, DOB, Gender, Behaviour, Food_prefer, Napping_hours, Other_updates)
VALUES ('C015', 'Logan', 'Thomas', '2015-05-05', 'Male', 'Calm and friendly', 'Pasta', '02:00:00', 'Enjoys reading');

SELECT *,TIMESTAMPDIFF(YEAR, DOB, NOW()) AS Age
FROM day_care_center.Child;

-- CLASSROOM TABLE:
CREATE TABLE Classroom(
    Classroom_no varchar(25) Not Null,
    Class_Name varchar(25),
    Age_group varchar(15),
    Capacity int,
    
    primary key (Classroom_no)
);

INSERT INTO Classroom (Classroom_no, Class_Name, Age_group, Capacity)
VALUES ('A', 'Full Day Class', '5-12 years', 20);
INSERT INTO Classroom (Classroom_no, Class_Name, Age_group, Capacity)
VALUES ('B', 'Half Day Class', '5-12 years', 10);
INSERT INTO Classroom (Classroom_no, Class_Name, Age_group, Capacity)
VALUES ('C', 'Family Class', '5-12 years', 5);
INSERT INTO Classroom (Classroom_no, Class_Name, Age_group, Capacity)
VALUES ('D', 'Pre-School Class', '0-5 years', 25);
INSERT INTO Classroom (Classroom_no, Class_Name, Age_group, Capacity)
VALUES ('E', 'After School Class', '5-12 years', 20);

-- GARDIAN TABLE:
CREATE TABLE Gardian(
    Child_ID varchar(25) Not Null,
    First_name varchar(25),
    Last_name varchar(25),
    NIC varchar(15),
    Apartment_No int,
    Street varchar(25),
    City varchar(15),
    Phone_number bigint,
    Whatsapp_number bigint,
    Email varchar(50),
    Relation_to_the_child varchar(25),
    primary key (Child_ID)
);

INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C001', 'Jane', 'Doe', '987654321V', 201, 'Oak Street', 'Cityville', 2345678901, 9876543210, 'jane@email.com', 'Mother');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C002', 'David', 'Johnson', '123456789V', 302, 'Cedar Avenue', 'Townsville', 3456789012, 8765432109, 'david@email.com', 'Father');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C003', 'Michael', 'Smith', '555555555V', 101, 'Pine Road', 'Smalltown', 4567890123, 7654321098, 'michael@email.com', 'Father');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C004', 'Emily', 'Williams', '111111111V', 202, 'Maple Lane', 'Villagetown', 5678901234, 6543210987, 'emily@email.com', 'Mother');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C005', 'William', 'Brown', '999999999V', 303, 'Rose Street', 'Countryside', 6789012345, 5432109876, 'william@email.com', 'Father');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C006', 'Abigail', 'Jones', '333333333V', 404, 'Tulip Avenue', 'Hometown', 7890123456, 4321098765, 'abigail@email.com', 'Mother');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C007', 'Ella', 'Miller', '777777777V', 505, 'Sunset Drive', 'Smalltown', 8901234567, 3210987654, 'ella@email.com', 'Mother');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C008', 'James', 'Davis', '444444444V', 606, 'Meadow Lane', 'Villagetown', 9012345678, 2109876543, 'james@email.com', 'Father');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C009', 'Benjamin', 'Garcia', '888888888V', 707, 'River Road', 'Countryside', 1234567890, 1098765432, 'benjamin@email.com', 'Father');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C010', 'Sofia', 'Rodriguez', '555555555V', 808, 'Orchard Street', 'Hometown', 2345678901, 0987654321, 'sofia@email.com', 'Mother');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C011', 'Daniel', 'Wilson', '222222222V', 909, 'Park Avenue', 'Smalltown', 3456789012, 9876543210, 'daniel@email.com', 'Father');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C012', 'Alexander', 'Martinez', '999999999V', 1010, 'Garden Lane', 'Villagetown', 4567890123, 8765432109, 'alexander@email.com', 'Father');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C013', 'Evelyn', 'Anderson', '666666666V', 1111, 'Brookside Road', 'Villagetown', 5678901234, 7654321098, 'evelyn@email.com', 'Mother');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C014', 'Jack', 'Taylor', '111111111V', 1212, 'Mountain View', 'Countryside', 6789012345, 6543210987, 'jack@email.com', 'Father');
INSERT INTO Gardian(Child_ID, First_name, Last_name, NIC, Apartment_No, Street, City, Phone_number, Whatsapp_number, Email, Relation_to_the_child)
VALUES ('C015', 'Harper', 'Thomas', '777777777V', 1313, 'Lakefront Avenue', 'Hometown', 7890123456, 5432109876, 'harper@email.com', 'Mother');

-- ALTERNATE CONTACT TABLE:
CREATE TABLE Alternate_Contact(
    Child_ID varchar(25) Not Null,
    AlternateContact_Name varchar(25),
    Apartment_No int,
    Street varchar(25),
    City varchar(15),
    Phone_number bigint,
    Relationship varchar(50),
    primary key (Child_ID)
);

INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C001', 'Jane Smith', 302, 'Cedar Avenue', 'Cityville', 9876543210, 'Aunt');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C002', 'David Johnson', 201, 'Oak Street', 'Townsville', 8765432109, 'Grandparent');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C003', 'Michael Smith', 401, 'Elm Road', 'Smalltown', 7654321098, 'Cousin');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C004', 'Emily Williams', 202, 'Pine Lane', 'Villagetown', 6543210987, 'Grandparent');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C005', 'William Brown', 303, 'Sunset Drive', 'Countryside', 5432109876, 'Family Friend');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C006', 'Abigail Jones', 404, 'River Road', 'Hometown', 4321098765, 'Aunt');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C007', 'Ella Miller', 505, 'Lakefront Avenue', 'Smalltown', 3210987654, 'Cousin');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C008', 'James Davis', 606, 'Meadow Lane', 'Villagetown', 2109876543, 'Family Friend');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C009', 'Benjamin Garcia', 707, 'Mountain View', 'Countryside', 1098765432, 'Uncle');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C010', 'Sofia Rodriguez', 808, 'Orchard Street', 'Hometown', 0987654321, 'Grandparent');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C011', 'Daniel Wilson', 101, 'Main Road', 'Cityville', 9876543210, 'Aunt');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C012', 'Alexander Martinez', 202, 'Cedar Street', 'Townsville', 8765432109, 'Cousin');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C013', 'Evelyn Anderson', 303, 'Elm Avenue', 'Smalltown', 7654321098, 'Family Friend');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C014', 'Jack Taylor', 404, 'Pine Lane', 'Villagetown', 6543210987, 'Uncle');
INSERT INTO Alternate_Contact(Child_ID, AlternateContact_Name, Apartment_No, Street, City, Phone_number, Relationship)
VALUES ('C015', 'Harper Thomas', 505, 'Sunset Drive', 'Countryside', 5432109876, 'Grandparent');

-- CONSUMABLE TABLE:
CREATE TABLE Consumable(
    Reg_no varchar(25) Not Null,
    Garbage_Bags int,
    Serviette int,
    Folaks int,
    Cups int,
    Plates int,
    Paper int,
    Pencils int,
    Finger_paints int,
    Pastels int,
    Scissor int,
    Glu int,
    
    primary key (Reg_no)
);

INSERT INTO Consumable(Reg_no, Garbage_Bags, Serviette, Folaks, Cups, Plates, Paper, Pencils, Finger_paints, Pastels, Scissor, Glu)
VALUES ('D1', 100, 200, 50, 300, 150, 500, 400, 100, 200, 50, 10);
INSERT INTO Consumable(Reg_no, Garbage_Bags, Serviette, Folaks, Cups, Plates, Paper, Pencils, Finger_paints, Pastels, Scissor, Glu)
VALUES ('D2', 80, 150, 40, 250, 120, 450, 350, 90, 180, 40, 8);
INSERT INTO Consumable(Reg_no, Garbage_Bags, Serviette, Folaks, Cups, Plates, Paper, Pencils, Finger_paints, Pastels, Scissor, Glu)
VALUES ('D3', 90, 180, 45, 270, 135, 550, 420, 105, 210, 45, 9);
INSERT INTO Consumable(Reg_no, Garbage_Bags, Serviette, Folaks, Cups, Plates, Paper, Pencils, Finger_paints, Pastels, Scissor, Glu)
VALUES ('D4', 70, 140, 35, 230, 110, 400, 320, 80, 160, 35, 7);
INSERT INTO Consumable(Reg_no, Garbage_Bags, Serviette, Folaks, Cups, Plates, Paper, Pencils, Finger_paints, Pastels, Scissor, Glu)
VALUES ('D5', 85, 160, 42, 260, 130, 480, 380, 95, 190, 42, 8);
INSERT INTO Consumable(Reg_no, Garbage_Bags, Serviette, Folaks, Cups, Plates, Paper, Pencils, Finger_paints, Pastels, Scissor, Glu)
VALUES ('D6', 95, 190, 48, 290, 145, 600, 450, 115, 230, 48, 10);
INSERT INTO Consumable(Reg_no, Garbage_Bags, Serviette, Folaks, Cups, Plates, Paper, Pencils, Finger_paints, Pastels, Scissor, Glu)
VALUES ('D7', 75, 155, 38, 245, 125, 430, 360, 88, 175, 38, 7);

-- ----------------------------------
-- RECURSIVE RELATIONSHIP
-- ----------------------------------

ALTER TABLE employee
ADD CONSTRAINT FK_employeeSupervisor
FOREIGN KEY (Supervisor_ID) REFERENCES employee(Employee_ID);

-- ----------------------------------
-- WEEK RELATIONSHIP
-- ----------------------------------

ALTER TABLE Gardian
ADD CONSTRAINT FK_GuardianOfChild
FOREIGN KEY (Child_ID) REFERENCES Child(Child_ID)
ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE Alternate_Contact
ADD CONSTRAINT FK_alternate_contact
FOREIGN KEY (Child_ID) REFERENCES child(Child_ID)
on delete cascade on update cascade;

ALTER TABLE Employee
ADD CONSTRAINT FK_Supervisor
FOREIGN KEY (Supervisor_ID) REFERENCES Employee(Employee_ID);


ALTER TABLE Consumable
ADD CONSTRAINT FK_consumable
FOREIGN KEY (Reg_no) REFERENCES Daycare_Center(Reg_No)
ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------------
-- TABLE UPDATE AND DELETE RECORDS
-- ----------------------------------

-- EMPLOYEE TABLE
UPDATE employee
SET Employee_Name = 'Praveen'
WHERE Employee_ID = 'E003';

UPDATE employee
SET Employee_Name = 'Bathiya'
WHERE Employee_ID = 'E004';


-- First, delete the related records in the employee_contact_details table
DELETE FROM employee_contact_details WHERE Employee_ID = 'E007';

-- First, delete the related records in the employee_qualifications table
DELETE FROM employee_qualifications WHERE Employee_ID = 'E007';

-- Now, you can delete the record from the employee table
DELETE FROM employee WHERE Employee_ID = 'E007';


-- DAYCARE CENTER TABLE
UPDATE Daycare_Center
SET Contact_No = '0354568097'
WHERE Reg_no = 'D3';

UPDATE Daycare_Center
SET Contact_No = '03214568097'
WHERE Reg_no = 'D5';

DELETE FROM Daycare_Center WHERE Reg_no='D5';

-- TOY TABLE
UPDATE Toy
SET Suplier = 'Toycenter'
WHERE Toy_no = 1;

UPDATE Toy
SET Suplier = 'Toycenter'
WHERE Toy_no = 3;

DELETE FROM Toy WHERE Toy_no= 12;

-- ACTIVITY TABLE
UPDATE Activity
SET Employee_assigned = 'Mahesi Silva'
WHERE Activity_no = 'A009';

UPDATE Activity
SET Employee_assigned = 'Tharindu Silva'
WHERE Activity_no = 'A007';

DELETE FROM activity WHERE Activity_no = 'A006';

-- CHILD TABLE
UPDATE child
SET First_name = 'Joshep'
WHERE Child_ID = 'C008';

UPDATE Child
SET First_name = 'Jhon'
WHERE Child_ID = 'C006';


DELETE FROM child WHERE Child_ID = 'C009';

-- CLASSROOM TABLE
UPDATE classroom
SET Age_group = '0-5 years'
WHERE Classroom_no = 'B';

UPDATE Classroom
SET Age_group = '0-5 years'
WHERE Classroom_no = 'C';

DELETE FROM classroom WHERE Classroom_no= 'D';

-- GARDIAN TABLE
UPDATE gardian
SET  City = 'Colombo'
WHERE Child_ID='C005';

UPDATE Gardian
SET  City = 'Kelaniya'
WHERE Child_ID='C007';

DELETE FROM gardian WHERE Child_ID = 'C011';

-- ALTERNATE CONTACT TABLE
UPDATE alternate_contact
SET  Relationship = 'Cousin'
WHERE Child_ID = 'C004';

UPDATE Alternate_contact
SET  Relationship = 'Grandparent'
WHERE Child_ID = 'C012';

DELETE FROM alternate_contact WHERE Child_ID= 'C007';

-- CONSUMABLE TABLE
UPDATE consumable
SET  Folaks = 30
WHERE Reg_no = 'D6';

UPDATE Consumable
SET  Plates = 650
WHERE Reg_no = 'D4';

DELETE FROM consumable WHERE Reg_no = 'D2';

-- ----------------------------------
-- Transactions
-- ----------------------------------

-- Simple Query

-- 1) Select query

Select * from employee;
Select * from employee where salary> '50000.00';

-- 2) Project Query

Select * from child;
Select Child_ID,DOB from child where Gender='Male';

-- 3) Cartesian product operation

select * from child;
select * from gardian;
select * from gardian cross join child;

-- 4) User view

create view UV1 as select C.Child_ID,C.DOB from child as C inner join Alternate_Contact as A on C.Child_ID = A.Child_ID
where A.City = 'CityVille' ;
select *from UV1;

-- 5) Renaming operation

rename table activity to exercise;

-- 6) Query demonstrating the use of an aggregation function 

Select supervisor_ID,count(supervisor_ID) as No_of_Employee, avg(Salary)  as Average_Salary   
from employee group by supervisor_ID;

-- 7) Query to demonstrate the use of LIKE keyword
SELECT Child_ID, Napping_hours from child
where Napping_hours like'_1:3_:__';

-- Complex Query

-- 1) Union

select * from Child;
(select First_name as Child_Name , Behaviour as Characteristics from Child where Food_prefer ='Vegetables')
UNION
(select First_name as Child_Name , Behaviour as Characteristics from Child where Food_prefer ='Fruits');

-- 2) Intersection

select * from Classroom;
(select Classroom_no as Class_ID , Class_Name as Acticity_Hall from Classroom where Capacity>10) 
INTERSECT
(select Classroom_no as Class_ID , Class_Name as Acticity_Hall from Classroom where Age_group='5-12 years');

-- 3) Set Differnce Operation

SELECT * FROM Exercise;
(select Activity_no as Task_No , Activity_name as Task from Exercise)
except
(select Activity_no as Task_No , Activity_name as Task from Exercise where Employee_assigned ='Maheshi Silva');

-- 4) Division

Select * from daycare_center;
select distinct Reg_No from daycare_center where Reg_No = 'D1' or Reg_No = 'D7';
select distinct City from daycare_center as C1
where not exists ((select distinct Reg_No from daycare_center where Reg_No = 'D1' or Reg_No = 'D7')
Except
(Select C2.Reg_No from daycare_center as C2 where C1.city=C2.city));

--  5) Inner join 

create view UVei1 as( select child_ID,First_name,Last_name,Gender from child );
select *from UVei1;
create view UVei2 as ( select child_ID,First_name,Relation_to_the_child,NIC,Phone_number from gardian) ;
select *from UVei2;
select *from UVei1 AS Uview1 Inner join UVei2 As Uview2 on Uview1.child_ID=Uview2.child_ID where Relation_to_the_child ='Mother';

-- 6) Natural join

create view UVe3 as( select child_ID,First_name,Last_name from child );
select *from UVe3;
create view UVe4 as ( select child_ID,AlternateContact_Name,Relationship from alternate_contact) ;
select *from UVe4;
select *from UVe3 AS Uview3 natural join UVe4 As Uview4 where Relationship='Cousin' ;

-- 7) Left outer join

create view UVe7 as( select child_ID,First_name,Last_name ,city from gardian );
select *from UVe7;
create view UVe8 as ( select AlternateContact_Name,City,Apartment_No from Alternate_contact) ;
select *from UVe8;
select *from UVe7 AS Uview7 left outer join UVe8 As Uview8 on Uview7.City=Uview8.City where Uview8.Apartment_No>400;

-- 8) right outer join

select *from UVe7 AS Uview7 right outer join UVe8 As Uview8 on Uview7.City=Uview8.City where Uview8.Apartment_No>400;

-- 9) Full outer join

SELECT *
FROM UVe7 AS Uview7
LEFT OUTER JOIN UVe8 AS Uview8
ON Uview7.City = Uview8.City
WHERE Uview8.Apartment_No > 400

UNION ALL
SELECT *
FROM UVe7 AS Uview7
RIGHT OUTER JOIN UVe8 AS Uview8
ON Uview7.City = Uview8.City
WHERE Uview8.Apartment_No >400;

-- 10) Outer union 

SELECT *
FROM UVe7 AS Uview7
LEFT OUTER JOIN UVe8 AS Uview8
ON Uview7.city = Uview8.City
WHERE Uview8.Apartment_No > 400
UNION ALL
SELECT *
FROM UVe7 AS Uview7
RIGHT OUTER JOIN UVe8 AS Uview8
ON Uview7.city = Uview8.City
WHERE Uview8.Apartment_No < 400;

-- 11) Nested query 1

SELECT supervisor_ID, AVG(salary) AS avg_salary
FROM employee
WHERE supervisor_ID IS NOT NULL
GROUP BY supervisor_ID
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employee
);

-- 12) Nested query 2

SELECT C.First_name AS Child_FirstName, C.Last_name AS Child_LastName, G.First_name AS Guardian_FirstName, G.Last_name AS Guardian_LastName
FROM child AS C
INNER JOIN (
    SELECT child_ID, First_name, Last_name
    FROM gardian
    WHERE Relation_to_the_child = 'Father'
) AS G
ON C.child_ID = G.child_ID;

-- 13) Nested query 3

SELECT Child_ID, Napping_hours
FROM child
WHERE EXISTS (
    SELECT *
    FROM child AS C
    WHERE C.Child_ID = child.Child_ID
    AND (C.Napping_hours like'_2:3_:__'or C.Napping_hours like'_1:3_:__')
);

-- ----------------------------------
-- Database Tunning
-- ----------------------------------

-- 1) Tunning of Union operation

show index from child;
explain (select First_name as Child_Name , Behaviour as Characteristics from Child where Food_prefer ='Vegetables')
UNION
(select First_name as Child_Name , Behaviour as Characteristics from Child where Food_prefer ='Fruits');
create index Food_prefer_ind on Child(Food_prefer);
show index from child;
explain (select First_name as Child_Name , Behaviour as Characteristics from Child where Food_prefer ='Vegetables')
UNION
(select First_name as Child_Name , Behaviour as Characteristics from Child where Food_prefer ='Fruits');

-- 2) Tunning of Intersection

show index from Classroom;
Explain(select Classroom_no as Class_ID , Class_Name as Acticity_Hall from Classroom where Capacity>10) 
INTERSECT
(select Classroom_no as Class_ID , Class_Name as Acticity_Hall from Classroom where Age_group='5-12 years');
create index Capacity_ind on Classroom(Capacity);
show index from classroom;
Explain(select Classroom_no as Class_ID , Class_Name as Acticity_Hall from Classroom where Capacity>10) 
INTERSECT
(select Classroom_no as Class_ID , Class_Name as Acticity_Hall from Classroom where Age_group='5-12 years');

-- 3) Tunning of set differnce operation

show index from Exercise;
explain(select Activity_no as Task_No , Activity_name as Task from Exercise)
except
(select Activity_no as Task_No , Activity_name as Task from Exercise where Employee_assigned ='Maheshi Silva');
create index Employee_assign_ind on Exercise(Employee_assigned);
show index from Exercise;
explain(select Activity_no as Task_No , Activity_name as Task from Exercise)
except
(select Activity_no as Task_No , Activity_name as Task from Exercise where Employee_assigned ='Maheshi Silva');

-- 4) Tunning of Natural join operation

show index from Child;
show index from alternate_contact;
explain(select *from UVe3 AS Uview3 natural join UVe4 As Uview4 where Relationship='Cousin') ;
create index Relationship_ind on alternate_contact(Relationship);
show index from alternate_contact;
explain(select *from UVe3 AS Uview3 natural join UVe4 As Uview4 where Relationship='Cousin') ;

-- 5) Tuning of Right outer join operation

show index from gardian;
show index from alternate_contact;
explain(select *from UVe7 AS Uview7 right outer join UVe8 As Uview8 on Uview7.City=Uview8.City where Uview8.Apartment_No>400);
create index Apartment_no_ind on alternate_contact(Apartment_No);
show index from alternate_contact;
explain(select *from UVe7 AS Uview7 right outer join UVe8 As Uview8 on Uview7.City=Uview8.City where Uview8.Apartment_No>400);

-- 6) Tuning of Left outer join operation

show index from gardian;
show index from alternate_contact;
explain(select *from UVe7 AS Uview7 left outer join UVe8 As Uview8 on Uview7.City=Uview8.City where Uview8.Apartment_No>400);
create index Apartment_ind on alternate_contact(Apartment_No);
show index from alternate_contact;
explain(select *from UVe7 AS Uview7 left outer join UVe8 As Uview8 on Uview7.City=Uview8.City where Uview8.Apartment_No>400);

-- 7) Tuning of Full outer join operation

show index from gardian;
show index from alternate_contact;
explain(Select * from UVe7 AS Uview7
left outer join UVe8 AS Uview8
on Uview7.City = Uview8.City
where Uview8.Apartment_No > 400
union all
SELECT *
FROM UVe7 AS Uview7
RIGHT OUTER JOIN UVe8 AS Uview8
ON Uview7.City = Uview8.City
WHERE Uview8.Apartment_No >400);
create index Apartmnet1_ind on alternate_contact(Apartment_No);
show index from alternate_contact;
explain(Select * from UVe7 AS Uview7
left outer join UVe8 AS Uview8
on Uview7.City = Uview8.City
where Uview8.Apartment_No > 400
union all
SELECT *
FROM UVe7 AS Uview7
RIGHT OUTER JOIN UVe8 AS Uview8
ON Uview7.City = Uview8.City
WHERE Uview8.Apartment_No >400);

-- 8) Tunning of nested query 2

show index from child;
show index from gardian;
explain(SELECT C.First_name AS Child_FirstName, C.Last_name AS Child_LastName, G.First_name AS Guardian_FirstName, G.Last_name AS Guardian_LastName
FROM child AS C
INNER JOIN (
    SELECT child_ID, First_name, Last_name
    FROM gardian
    WHERE Relation_to_the_child = 'Father'
) AS G
ON C.child_ID = G.child_ID);
create index Realation_ind on gardian(Relation_to_the_child);
show index from gardian;
explain(SELECT C.First_name AS Child_FirstName, C.Last_name AS Child_LastName, G.First_name AS Guardian_FirstName, G.Last_name AS Guardian_LastName
FROM child AS C
INNER JOIN (
    SELECT child_ID, First_name, Last_name
    FROM gardian
    WHERE Relation_to_the_child = 'Father'
) AS G
ON C.child_ID = G.child_ID);

-- 9) Tunning of nested query 3

show index from child;
explain(SELECT Child_ID, Napping_hours
FROM child
WHERE EXISTS (
    SELECT *
    FROM child AS C
    WHERE C.Child_ID = child.Child_ID
    AND (C.Napping_hours like'_2:3_:__'or C.Napping_hours like'_1:3_:__')
));
create index Napping_ho_ind on child(Napping_hours);
show index from child;
explain(SELECT Child_ID, Napping_hours
FROM child
WHERE EXISTS (
    SELECT *
    FROM child AS C
    WHERE C.Child_ID = child.Child_ID
    AND (C.Napping_hours like'_2:3_:__'or C.Napping_hours like'_1:3_:__')
));

-- 10) Tuning of Inner join operation

show index from child;
show index from gardian;
explain(select *from UVei1 AS Uview1 Inner join UVei2 As Uview2 on Uview1.child_ID=Uview2.child_ID where Relation_to_the_child ='Mother');
show index from gardian;
explain(select *from UVei1 AS Uview1 Inner join UVei2 As Uview2 on Uview1.child_ID=Uview2.child_ID where Relation_to_the_child ='Mother');






