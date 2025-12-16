📌 SQL DDL: ALTER TABLE Operations

This repository demonstrates **DDL (Data Definition Language)** operations in SQL, focusing on **ALTER TABLE** commands.  
ALTER TABLE is used to **modify an existing table structure** without losing data.

```sql
CREATE TABLE Company_Emp (
    Employee_id SERIAL,
    Name VARCHAR(30) NOT NULL,
    age INT CHECK (age >= 18),
    Department VARCHAR(50),
    Hired_Date DATE
);
```
🧹 Dropping the Table Safely
DROP TABLE IF EXISTS Company_Emp;

📘 Explanation

Deletes the table only if it exists

Prevents runtime errors

Commonly used in development/testing environments

🎯 Use Case

✔ Resetting database schema
✔ Re-running table creation scripts

🛠️ ALTER TABLE Operations
🔹 Adding a New Column
```
ALTER TABLE Company_Emp
ADD COLUMN E_Mail VARCHAR(50);

```

📘 Explanation

Adds a new column E_Mail

Existing records get NULL by default

🎯 Use Case

✔ Adding email IDs after system upgrade
✔ Expanding employee profile data

✏️ Renaming a Column 
```
ALTER TABLE Company_Emp
RENAME COLUMN Employee_id TO ID;

DESCRIBE Company_Emp;
```
📘 Explanation

Renames a column without affecting stored data

Useful for improving naming conventions

🎯 Use Case

✔ Standardizing column names
✔ Refactoring database schema

🗑️ Dropping an Existing Column
```
ALTER TABLE Company_Emp
DROP COLUMN Hired_Date;

DESCRIBE Company_Emp;
```
📘 Explanation

Permanently removes the column and its data

Cannot be undone without backup

🎯 Use Case

✔ Removing unused or deprecated fields
✔ Cleaning legacy database structures

➕ Adding Another Column
```
ALTER TABLE Company_Emp
ADD COLUMN Marital_Status VARCHAR(10);

DESCRIBE Company_Emp;
```
📘 Explanation

Adds Marital_Status column

Helps in storing additional employee attributes

🎯 Use Case

✔ HR data expansion
✔ Employee demographic analysis

🧠 Key Points About ALTER TABLE

ALTER TABLE modifies structure, not data

Works on existing tables

Operations may be expensive on large tables

Always backup data before structural changes

🎯 Common Real-World Use Cases

Adding new features to applications

Refactoring database design

Removing unused columns

Enforcing better naming conventions

Schema evolution in production systems

📚 SQL Commands Covered
```
CREATE TABLE

DROP TABLE IF EXISTS

ALTER TABLE ADD COLUMN

ALTER TABLE RENAME COLUMN

ALTER TABLE DROP COLUMN
```
🤝 Contributing

You can enhance this by adding:

ALTER TABLE with constraints

ALTER TABLE MODIFY datatype

ALTER TABLE ADD / DROP constraints

📄 License

This project is open-source and free for learning and practice. 
