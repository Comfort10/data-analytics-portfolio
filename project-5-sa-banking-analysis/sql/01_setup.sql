-- Create SARB Database named BankingSectorDB

CREATE DATABASE BankingSectorDB

-- Use the BankingSectorDB database

USE BankingSectorDB

-- 1. Create the Description Lookup Table
DROP TABLE sarb_description

CREATE TABLE sarb_description (
    code VARCHAR(25) PRIMARY KEY,
    description VARCHAR(50) NOT NULL
);

-- 2. Create the Monthly Time-Series Data Table
DROP TABLE sarb_monthly

CREATE TABLE sarb_monthly (
    date DATE NOT NULL,
    code VARCHAR(25) NOT NULL,
    value DECIMAL(18, 2) NOT NULL,
    PRIMARY KEY (date, code),
    FOREIGN KEY (code) REFERENCES sarb_description(code)
