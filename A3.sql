CREATE DATABASE BANK;
USE BANK;

CREATE TABLE bank_accounts(
    account_id INT PRIMARY KEY,
    client_name VARCHAR(100),
    balance INT
);

INSERT INTO bank_accounts(account_id, client_name, balance) VALUES
(1, 'Neena Gorges', 10),
(2, 'David Joshua', 200),
(3, 'Effie Sismanis', -25),
(4, 'Lorraine Cash', 350),
(5, 'Jose Cardoze', 50);

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1; 

UPDATE bank_accounts
SET balance = balance * 1.05;

UPDATE bank_accounts
SET balance = balance-50
WHERE account_id = 2;

UPDATE bank_accounts
SET balance = balance + 50
WHERE account_id = 5;

DELETE FROM bank_accounts WHERE balance < 0;


SET autocommit = 1;
SHOW variables LIKE 'AUTOCOMMIT';

BEGIN;
UPDATE bank_accounts SET balance = balance - 200
WHERE account_id = 4;

UPDATE bank_accounts SET balance = balance + 200
WHERE account_id = 1;
COMMIT;

SELECT * FROM bank_accounts;
