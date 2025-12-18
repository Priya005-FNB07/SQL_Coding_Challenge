                                      --Question 1 : CREATE Table--
create database Hospital;
use Hospital;
 create table Patients (
 Patient_ID int,
 Patient_Name varchar(50), 
 Age int,
 Gender enum('F','M'),
 Admission_Date date);
                                       --Question 2 : ALTER - Add Column--
use Hospital;
Alter table patients add column Doctor_Assigned varchar(50);  
									  --Question 3 : ALTER - Modify Column--
 Alter table patients
 modify column  Patient_Name varchar(100);
									  --Question 4 : RENAME Table--
 rename table patients to Patient_Info;                                     
                                      --Question 5 : TRUNCATE Vs DROP--
 truncate table Patient_Info;                                     
drop table Patient_Info;									
                                      
                                      
                                      
                                      
                                      