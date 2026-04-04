CREATE DATABASE NCD_Project

USE NCD_Project

CREATE TABLE ncd_data (
	record_id INT IDENTITY(1,1) PRIMARY KEY, 
	year INT,
	province varchar(50),
	diabetes_prevalence decimal(5,2),
	hypertension_prevalence decimal(5,2),
	hypertension_awareness decimal(5,2),
	on_treatment decimal(5,2),
	controlled decimal(5,2),
	population_millions decimal(5,2)
	)

INSERT INTO ncd_data
VALUES 	
		(2012, 'Gauteng', 7.9, 28.4, 48.2, 38.1, 42.3, 13.2),
		(2016, 'Gauteng', 9.2, 30.1, 50.3, 40.2, 44.1, 14.1),
		(2018, 'Gauteng', 9.8, 31.2, 51.8, 42.6, 45.2, 14.7),
		(2019, 'Gauteng', 10.1, 32.4, 52.4, 43.8, 46.3, 14.9),
		(2021, 'Gauteng', 10.6, 33.8, 53.9, 45.1, 47.8, 15.1),
		(2022, 'Gauteng', 11.1, 34.5, 54.3, 46.8, 48.6, 15.8),
		(2012, 'KwaZulu-Natal', 6.8, 26.1, 44.2, 35.4, 40.1, 10.8),
		(2016, 'KwaZulu-Natal', 8.1, 27.8, 46.8, 37.9, 42.4, 11.1),
		(2018, 'KwaZulu-Natal', 8.6, 29.2, 48.1, 39.4, 43.6, 11.4),
		(2019, 'KwaZulu-Natal', 9.0, 30.5, 49.3, 41.2, 44.8, 11.5),
		(2021, 'KwaZulu-Natal', 9.4, 31.8, 51.2, 43.6, 46.2, 11.8),
		(2022, 'KwaZulu-Natal', 9.8, 32.6, 52.8, 44.9, 47.1, 12.1),
		(2012, 'Western Cape', 8.4, 27.2, 52.1, 42.3, 48.2, 5.8),
		(2016, 'Western Cape', 9.6, 28.9, 54.6, 44.8, 50.1, 6.2),
		(2018, 'Western Cape', 10.2, 30.1, 56.2, 46.2, 51.8, 6.5),
		(2019, 'Western Cape', 10.6, 31.4, 57.8, 47.6, 52.9, 6.7),
		(2021, 'Western Cape', 11.0, 32.8, 58.9, 49.1, 54.2, 6.9),
		(2022, 'Western Cape', 11.4, 33.6, 59.4, 50.2, 55.8, 7.1),
		(2012, 'Eastern Cape', 5.9, 24.8, 38.4, 31.2, 36.8, 6.6),
		(2016, 'Eastern Cape', 7.2, 26.4, 40.8, 33.6, 38.4, 6.7),
		(2018, 'Eastern Cape', 7.8, 27.8, 42.6, 35.4, 40.2, 6.8),
		(2019, 'Eastern Cape', 8.2, 29.1, 44.2, 37.1, 41.8, 6.9),
		(2021, 'Eastern Cape', 8.6, 30.4, 46.1, 39.2, 43.4, 7.0),
		(2022, 'Eastern Cape', 9.0, 31.2, 47.8, 40.8, 44.9, 7.1)














