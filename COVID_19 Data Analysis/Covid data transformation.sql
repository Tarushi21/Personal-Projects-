CREATE DATABASE HEALTHCARE;
USE HEALTHCARE;

CREATE OR REPLACE TABLE COVID_DATA (
    iso_code VARCHAR(10),
    continent VARCHAR(50),
    location VARCHAR(100),
    date DATE,
    total_cases INT,
    total_deaths INT,
    total_tests INT,
    positive_rate FLOAT,
    tests_units VARCHAR(50),
    total_vaccinations INT,
    people_vaccinated INT,
    people_fully_vaccinated INT,
    total_boosters INT,
    population INT
);

ALTER TABLE COVID_DATA RENAME COLUMN LOCATION TO COUNTRY;

UPDATE COVID_DATA SET COUNTRY = 'United Kingdom' WHERE COUNTRY = 'England';
UPDATE COVID_DATA SET COUNTRY = 'China' WHERE COUNTRY = 'Taiwan';
UPDATE COVID_DATA SET COUNTRY = 'China' WHERE COUNTRY = 'Hong Kong';
UPDATE COVID_DATA SET COUNTRY = 'China' WHERE COUNTRY = 'Macao';
UPDATE COVID_DATA SET COUNTRY = 'Turkey' WHERE COUNTRY = 'Northern Cyprus';
UPDATE COVID_DATA SET COUNTRY = 'United Kingdom' WHERE COUNTRY = 'Northern Ireland';
UPDATE COVID_DATA SET COUNTRY = 'United Kingdom' WHERE COUNTRY = 'Scotland';
UPDATE COVID_DATA SET COUNTRY = 'United Kingdom' WHERE COUNTRY = 'Wales';
UPDATE COVID_DATA SET COUNTRY = 'North America' WHERE COUNTRY = 'Western Sahara';
UPDATE COVID_DATA SET CONTINENT ='Europe' WHERE COUNTRY = 'European Union';

SELECT * FROM COVID_DATA;