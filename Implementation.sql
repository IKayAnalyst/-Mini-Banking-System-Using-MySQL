# SHOW ALL CUSTOMERS AND THEIR ACCOUNT DETAILS

SELECT Customer_Details.Customer_ID, 
Customer_Details.First_Name,Customer_Details.Last_Name, 
Customer_Details.Gender, Customer_Details.Phone_Number, Customer_Details.Email, 
Account_Details.Account_ID, Account_Details.Account_Number,  
Account_Details.Account_Type, Account_Details.Account_Balance, Account_Details.Account_Status
FROM Customer_Details 
INNER JOIN Account_Details  ON Customer_Details.Customer_ID = Account_Details.Customer_ID;


# DISPLAY A LIST OF ALL TRANSACTIONS FOR A GIVEN ACCOUNT

SELECT * FROM Transaction_Information WHERE Transaction_Type = 'Deposit' AND Account_ID = 3
UNION
SELECT * FROM Transaction_Information WHERE Transaction_Type = 'Transfer' AND Account_ID = 3
UNION
SELECT * FROM Transaction_Information WHERE Transaction_Type = 'Withdrawal' AND Account_ID = 3;

# SHOW TOTAL BALANCE PER CUSTOMER

SELECT Customer_Details.Customer_ID, CONCAT(First_Name,' ', Last_Name) AS Full_Name, 
SUM(Account_Details.Account_Balance) AS Total_Balance_Per_Customer
FROM Customer_Details 
INNER JOIN Account_Details ON Customer_Details.Customer_ID = Account_Details.Customer_ID
GROUP BY Customer_Details.Customer_ID;

 
# LIST CUSTOMERS WHO HAVE MORE THAN ONE ACCOUNT

SELECT Customer_Details.Customer_ID, CONCAT(First_Name,' ', Last_Name) AS Full_Name,
COUNT(Account_Details.Account_ID>1) AS Customer_Bank_Account
FROM Customer_Details 
INNER JOIN Account_Details ON Customer_Details.Customer_ID = Account_Details.Customer_ID
GROUP BY Customer_Details .Customer_ID,
Customer_Details.First_Name ,Customer_Details.Last_Name
HAVING COUNT(Account_Details.Account_ID) >1; 



# FIND ACCOUNTS WITH BALANCE BELOW 10,000

SELECT Account_Details.Customer_ID, CONCAT(First_Name,' ', Last_Name) AS Full_Name, 
Account_Details.Account_Number, Account_Details.Account_Balance,
Account_Details.Account_Type, Account_Details.Account_Balance
FROM Account_Details 
INNER JOIN Customer_Details ON Account_Details.Customer_ID = Customer_Details.Customer_ID
WHERE Account_Balance < 10000;












