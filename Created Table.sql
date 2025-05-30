CREATE DATABASE db_Zenith_Microfinace_Bank;
USE db_Zenith_Microfinace_Bank;


CREATE TABLE customer_Details (
  Customer_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  First_Name varchar(50) DEFAULT NULL,
  Last_Name varchar(50) DEFAULT NULL,
  Gender enum('Male','Female') DEFAULT NULL,
  Date_Of_Birth date DEFAULT NULL,
  Phone_Number varchar(12) DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  Address varchar(150) DEFAULT NULL,
  Registration_Date datetime DEFAULT CURRENT_TIMESTAMP
  
 );
 
 
 CREATE TABLE account_Details (
  Account_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Customer_ID int DEFAULT NULL,
  Account_Type enum('Savings','Current') DEFAULT NULL,
  Account_Number varchar(20) DEFAULT NULL  UNIQUE KEY,
  Account_Balance decimal(12,2) DEFAULT NULL,
  Created_At timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  Account_Status enum('Active','Inactive') DEFAULT NULL,
  CONSTRAINT Check_Account_Balance CHECK(Account_Balance>0)

  );
  
  
  CREATE TABLE transaction_Information (
  Transaction_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  Account_ID int DEFAULT NULL,
  Transaction_Type enum('Deposit','Withdrawal','Transfer') DEFAULT NULL,
  Amount decimal(12,2) DEFAULT NULL,
  Transaction_Date timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  Description varchar(100) DEFAULT NULL,
  VAT decimal(12,2),
  CONSTRAINT transaction_details_ibfk_1 FOREIGN KEY (Account_ID) REFERENCES account_Details (Account_ID)
  ON DELETE CASCADE ON UPDATE CASCADE
  );
  
SELECT * FROM customer_Details;
  
SELECT * FROM account_Details;

SELECT * FROM transaction_Information;
  
  
  
  
  
