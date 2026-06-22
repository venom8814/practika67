-- ЗАДАНИЕ 5. Исследование данных

-- 5.1 Количество записей в каждой таблице
SELECT 'country' AS table_name, COUNT(*) AS record_count FROM world.country
UNION ALL
SELECT 'city', COUNT(*) FROM world.city
UNION ALL
SELECT 'countrylanguage', COUNT(*) FROM world.countrylanguage;

-- 5.2 Количество стран на каждом континенте
SELECT Continent, COUNT(*) AS country_count
FROM world.country
GROUP BY Continent
ORDER BY country_count DESC;

-- 5.3 Город с наибольшим населением и его страна
SELECT ci.Name AS city_name, ci.Population, co.Name AS country_name
FROM world.city ci
JOIN world.country co ON ci.CountryCode = co.Code
ORDER BY ci.Population DESC
LIMIT 1;
