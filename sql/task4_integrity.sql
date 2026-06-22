-- ЗАДАНИЕ 4. Проверка целостности данных

-- 4.1 Города, ссылающиеся на несуществующую страну
SELECT c.*
FROM world.city c
LEFT JOIN world.country co ON c.CountryCode = co.Code
WHERE co.Code IS NULL;

-- 4.2 Страны, чья столица ссылается на несуществующий город
SELECT co.*
FROM world.country co
LEFT JOIN world.city ci ON co.Capital = ci.ID
WHERE ci.ID IS NULL AND co.Capital IS NOT NULL;
