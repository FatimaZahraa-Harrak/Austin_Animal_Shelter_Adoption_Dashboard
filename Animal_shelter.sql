select * from shelter_outcomes_cleaned;

select count(animal_id)  AS Total_Animals from shelter_outcomes_cleaned;

SELECT animal_type, COUNT(*) AS total_animal_type
FROM shelter_outcomes_cleaned
GROUP BY animal_type
ORDER BY total_animal_type DESC;


SELECT TOP 10 main_breed, COUNT(*) AS total_breed
FROM shelter_outcomes_cleaned
GROUP BY main_breed
ORDER BY total_breed DESC;

SELECT sex, COUNT(*) AS total_sex
FROM shelter_outcomes_cleaned
GROUP BY sex;

SELECT spayed_neutered, COUNT(*) AS total_spayed_neutered
FROM shelter_outcomes_cleaned
GROUP BY spayed_neutered;

SELECT
    YEAR(datetime) AS year,
    MONTH(datetime) AS month,
    COUNT(*) AS total_outcomes
FROM shelter_outcomes_cleaned
GROUP BY YEAR(datetime), MONTH(datetime)
ORDER BY year, month;

SELECT outcome_type, COUNT(*) AS total_outcome_type
FROM shelter_outcomes_cleaned
GROUP BY outcome_type
ORDER BY total_outcome_type DESC;

SELECT ROUND(AVG(age_upon_outcome / 365.0), 1) AS avg_age_years
FROM shelter_outcomes_cleaned;