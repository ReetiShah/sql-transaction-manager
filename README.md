# SQL Transaction Manager

A MySQL Workbench project demonstrating bank account schema creation, DML operations, data cleanup, and atomic transaction handling using SQL transactions.

## Overview

This project provides a comprehensive guide to implementing and managing SQL transactions in a banking context. It demonstrates best practices for handling atomic operations, ensuring data consistency, and managing complex database scenarios with proper transaction control.

## Features

- **Bank Account Schema**: Complete database schema for managing bank accounts and transactions
- **DML Operations**: Demonstrations of INSERT, UPDATE, and DELETE operations
- **Transaction Handling**: Examples of ACID-compliant transaction management
- **Data Cleanup**: Utilities for cleaning up and resetting data
- **Atomic Operations**: Examples of multi-step operations that must complete together or not at all

## Getting Started

### Prerequisites

- MySQL Server (5.7 or higher)
- MySQL Workbench
- Basic understanding of SQL and transactions

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/ReetiShah/sql-transaction-manager.git
   ```

2. Open the project in MySQL Workbench

3. Execute the schema creation scripts to set up the database

## Project Structure

This project includes:

- **Schema Definition**: Database schema for the banking system
- **Transaction Examples**: Real-world examples of transaction handling
- **DML Scripts**: Data manipulation operation examples
- **Cleanup Scripts**: Data cleanup and reset procedures

## Usage

### Basic Transaction Example

```sql
START TRANSACTION;

-- Your SQL operations here
INSERT INTO accounts (account_number, balance) VALUES ('12345', 1000);
UPDATE accounts SET balance = balance - 100 WHERE account_number = '12345';

-- Commit the transaction
COMMIT;

-- Or rollback if needed
-- ROLLBACK;
```

### Key Concepts Demonstrated

1. **ACID Properties**: Atomicity, Consistency, Isolation, and Durability
2. **Commit and Rollback**: Finalizing or reverting transactions
3. **Transaction Isolation**: Managing concurrent database operations
4. **Error Handling**: Managing transaction failures gracefully

## Learning Outcomes

After working through this project, you will understand:

- How to create and manage database transactions
- Best practices for atomic operations in banking systems
- How to implement proper error handling and rollback strategies
- Data consistency and integrity in multi-user environments

## Contributing

Contributions are welcome! Feel free to:

- Report bugs or issues
- Suggest improvements
- Add new transaction examples
- Enhance documentation

## License

This project is provided as-is for educational purposes.

## Contact

For questions or suggestions, please reach out via GitHub issues.

---

**Language**: PL/pgSQL  
**Last Updated**: 2026-05-16
