-- Create SARB Database named BankingSectorDB

CREATE DATABASE BankingSectorDB

-- Use the BankingSectorDB database

USE BankingSectorDB

-- Update the codes so that they are identical to the codes from the SARB_Banking_Data dataset

UPDATE sarb_description
SET code = CASE code
	WHEN 'KBP1008' THEN 'KBP1008M'
	WHEN 'KBP1123' THEN 'KBP1123M'
	WHEN 'KBP1132' THEN 'KBP1132M'
	WHEN 'KBP1166' THEN 'KBP1166M'
	WHEN 'KBP1347' THEN 'KBP1347M'
	WHEN 'KBP1486' THEN 'KBP1486M'
END 

WHERE code IN ('KBP1008', 'KBP1123', 'KBP1132', 'KBP1166', 'KBP1347', 'KBP1486') 
