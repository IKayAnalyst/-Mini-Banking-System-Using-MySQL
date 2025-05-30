INSERT INTO Customer_Details ( First_Name, Last_Name, Gender, Date_Of_Birth, Phone_Number, Email, Address) VALUES
('Osas', 'Imafidon', 'Male', '1995-10-27', '08039265870', CONCAT(LCASE(First_Name),LCASE(Last_Name),'35@gmail.com'), '45 Studio24 Lekki Phase1'),
('Abdul', 'Ibrahim', 'Male', '2003-05-08', '09159865896', CONCAT(LCASE(First_Name),LCASE(Last_Name),'87@yahoo.com'), '8 Elenganza Lake View Esate'),
('Mary', 'Aisha', 'Female', '1996-10-09', '09082658541', CONCAT(LCASE(First_Name),LCASE(Last_Name),'13@gmail.com'), '12 Badore Lekki Ajah'),
('Chidima', 'Uguchukwu', 'Female', '1991-05-24', '08145765811', CONCAT(LCASE(First_Name),LCASE(Last_Name),'11@gmail.com'), '5 Trinity Junction Ajah'),
('Amos', 'Olayinka', 'Male', '1984-10-27', '07098760321', CONCAT(LCASE(First_Name),LCASE(Last_Name),'22@gmail.com'), '19 Obalanede Custain Street');


INSERT INTO Account_Details (Customer_ID, Account_Type, Account_Number, Account_Balance, Account_Status)
VALUES 
(1, 'Savings', '0074889711', 50000, 'Active'),
(1, 'Current', '6774889712', 15000, 'Active'),
(2, 'Savings', '3137865431', 75000,  'Active'),
(2, 'Current', '2304588905', 250000, 'Active'),
(3, 'Savings', '2306577021', 10000, 'Active'),
(3, 'Current', '9876577022', 50000, 'Active'),
(4, 'Savings', '1118459009', 8000, 'Active'),
(4, 'Current', '3118459010', 80000, 'Inactive'),
(5, 'Savings', '0198652210', 120000, 'Active');


INSERT INTO Transaction_Information (Account_ID, Transaction_Type, Amount,  Description)
VALUES 
(1, 'Deposit', 200000, 'Salary deposit'),
(3, 'Deposit', 500000, 'My school Fees deposit'),
(4, 'Deposit', 300000, 'Cash Deposit'),
(2, 'Deposit', 150000, 'House rent deposit'),
(5, 'Deposit', 250000, 'Bonus payment');
,

INSERT INTO Transaction_Information (Account_ID, Transaction_Type, Amount,  Description)
VALUES 
(1, 'Withdrawal', 500.00, 'Nepa bill'),
(2, 'Withdrawal', 1000.00, 'Personal expenses'),
(3, 'Withdrawal', 200.00, 'ATM withdrawal'),
(4, 'Withdrawal', 750.00, 'Fuel'),
(5, 'Withdrawal', 1000.00, 'Food');

INSERT INTO Transaction_Information (Account_ID, Transaction_Type, Amount,  Description)
VALUES 
(7, 'Transfer', 1000.00, 'Rent Payment'),
(8, 'Transfer', 2000.00, 'Loan Repayment'),
(9,  'Transfer', 500.00, 'Netflix'),
(6, 'Transfer', 3000.00, 'DSTV'),
(3,  'Transfer', 2000.00, 'Chinedu feeding money');

