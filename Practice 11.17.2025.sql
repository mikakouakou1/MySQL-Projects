USE sql_practice;

-- 1. Countries table
CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL UNIQUE
);

-- 2. Years table
CREATE TABLE years (
    year_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL UNIQUE
);

-- 3. Country Year Data table
CREATE TABLE country_year_data (
    cyd_id INT AUTO_INCREMENT PRIMARY KEY,
    country_id INT NOT NULL,
    year_id INT NOT NULL,
    gdp_per_capita DECIMAL(12,2),
    population BIGINT,
    life_expectancy DECIMAL(5,2),
    literacy_rate DECIMAL(5,2),
    internet_penetration DECIMAL(5,2),
    healthcare_expenditure DECIMAL(12,2),
    inflation_rate DECIMAL(5,2),
    hdi DECIMAL(4,3),
    FOREIGN KEY (country_id) REFERENCES countries(country_id),
    FOREIGN KEY (year_id) REFERENCES years(year_id)
);

-- INSERT 3 initial countries
INSERT INTO countries (country_name)
VALUES ('Canada'), ('USA'), ('China');

-- INSERT YEARS
INSERT INTO years (year)
VALUES (2018), (2019), (2020), (2021), (2022);

-- INSERT SAMPLE COUNTRY-YEAR DATA
INSERT INTO country_year_data 
(country_id, year_id, gdp_per_capita, population, life_expectancy, literacy_rate,
 internet_penetration, healthcare_expenditure, inflation_rate, hdi)
VALUES
-- Canada
(1, 1, 46200, 37000000, 82.0, 99.0, 92.0, 5500, 2.0, 0.929),
(1, 2, 46500, 37200000, 82.1, 99.0, 93.0, 5600, 1.8, 0.930),
(1, 3, 47000, 37400000, 82.2, 99.0, 94.0, 5700, 1.2, 0.932),

-- USA
(2, 1, 60000, 327000000, 78.6, 99.0, 88.0, 11000, 2.4, 0.920),
(2, 2, 60500, 329000000, 78.8, 99.0, 89.0, 11200, 2.1, 0.921),

-- China
(3, 1, 16000, 1393000000, 76.4, 97.0, 60.0, 500, 2.5, 0.758),
(3, 2, 16500, 1396000000, 76.5, 97.0, 62.0, 520, 2.3, 0.760),
(3, 3, 17000, 1398000000, 76.7, 97.0, 64.0, 540, 2.1, 0.765);

-- CHECK TABLES
SHOW TABLES;

-- INSERT ADDITIONAL COUNTRIES
INSERT INTO countries (country_name)
VALUES 
('France'),
('Ivory Coast'),
('DR Congo'),
('Senegal'),
('Madagascar'),
('Kenya'),
('Belgium'),
('Germany'),
('Italy'),
('Russia'),
('Mexico'),
('Singapore');

SELECT 
    y.year,
    cyd.life_expectancy,
    AVG(cyd.life_expectancy) OVER (ORDER BY y.year) AS running_avg_life_expectancy
FROM countries c
JOIN country_year_data cyd ON c.country_id = cyd.country_id
JOIN years y ON y.year_id = cyd.year_id
WHERE c.country_name = 'Canada'
ORDER BY y.year;
