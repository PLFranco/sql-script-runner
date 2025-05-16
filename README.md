# 🛠️ SQL Batch Script Runner for EHRDB

This simple yet powerful batch script automates the execution of multiple `.sql` scripts against a local SQL Server database (`EHRDB`) using `sqlcmd`. It is especially useful for initializing or updating a database during development.

---

## 📋 Features

- Automatically detects and executes all `.sql` files in the current folder.
- Uses `sqlcmd` to connect to the local SQL Server instance.
- Logs errors to `script_execution.log` if any script fails.
- Displays a summary of how many scripts were executed successfully.

---

## ⚙️ Requirements

- **Windows OS** (Script is a `.bat` file)
- **SQL Server LocalDB** (`(localdb)\MSSQLLocalDB` must be running)
- **sqlcmd utility** must be installed and available in your system `PATH`.

> ⚠️ If `sqlcmd` is not installed, the script will notify you and stop.

---

## 🚀 How to Use

1. **Place your `.sql` files** in the same directory as the batch script.
2. **Double-click** the `run-scripts.bat` file, or run it from the Command Prompt:
   ```cmd
   
   EXECUTE.bat

--- 

🙋‍♂️ Why Use This?

 - Database setup for development environments.
 - QA Testing database scripts before production.
 - Streamlining onboarding for new testers.


