-- Create SARB Database named BankingSectorDB

CREATE DATABASE BankingSectorDB

-- Use the BankingSectorDB database

USE BankingSectorDB

-- 1. Create the Description Lookup Table
CREATE TABLE sarb_description (
    code VARCHAR(50) PRIMARY KEY,
    description VARCHAR(100) NOT NULL
);

-- 2. Create the Monthly Time-Series Data Table
CREATE TABLE sarb_monthly (
    date DATE NOT NULL,
    code VARCHAR(50) NOT NULL,
    value DECIMAL(18, 2) NOT NULL,
    PRIMARY KEY (date, code),
    FOREIGN KEY (code) REFERENCES sarb_description(code)
