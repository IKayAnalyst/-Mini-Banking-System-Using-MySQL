#  Mini Banking System Using MySQL

A practical implementation of a **relational database system** simulating a simplified banking environment using **MySQL**. This project demonstrates skills in database design, query writing, transaction handling, and data integrity enforcement.

---

## 🎯 Objective

This project aims to evaluate practical knowledge of relational database management by designing and implementing a **mini-banking system**. It includes managing customer accounts, handling transactions, and generating insights through SQL queries — all while ensuring **data integrity**, **security**, and **efficiency**.

---

## 🛠️ Features Implemented

- **Relational Database Design** with normalized tables and proper relationships  
- **Data Manipulation** with realistic sample entries  
- **Constraints  to enforce business rules  
- **Query Reports** for account summaries and transaction logs  

---

## 📚 Tables Created

1. **Customers**
   - Stores personal information of bank customers
   - Fields: `customer_id`, `name`, `gender`, `email`, `phone`, `address`, `created_at`

2. **Accounts**
   - Each customer can have multiple accounts
   - Fields: `account_id`, `customer_id` (FK), `account_type`, `account_number`, `balance`, `created_at`
   - Constraints: `CHECK(balance >= 0)`, `ENUM('Savings', 'Current')`

3. **Transactions**
   - Logs all types of transactions (Deposit, Withdrawal, Transfer)
   - Fields: `transaction_id`, `account_id` (FK), `type`, `amount`, `description`, `timestamp`
   - Types: `ENUM('Deposit', 'Withdrawal', 'Transfer')`

---

## 🧾 Part 1: Database Design (DDL)

- Proper use of:
  - `PRIMARY KEY`, `FOREIGN KEY`
  - `AUTO_INCREMENT`
  - `CHECK` constraints (e.g., no negative balance)
  - `ENUM` for gender (`'Male', 'Female', 'Other'`) and account type (`'Savings', 'Current'`)

---

## 📥 Part 2: Data Insertion (DML)

- Sample data includes:
  - ✅ 5 customers
  - ✅ 3 accounts per customer (mix of Savings and Current)
  - ✅ 15 meaningful transactions (Deposits, Withdrawals, Transfers)

---

## 💡 Example Queries

- Get total deposits and withdrawals
- Show transaction history for an account
- List customers with their account balances
- Generate top 5 accounts by balance


---

## 🧪 How to Use

1. Clone the repository: OR Download the file 
   ```bash
   git clone https://github.com/yourusername/Mini-Banking-System-MySQL.git 
