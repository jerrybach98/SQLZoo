-- 1. 
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');

-- 2. 
SELECT name FROM world
  WHERE continent = 'Europe'
  AND gdp/population >
     (SELECT gdp/population FROM world
      WHERE name='United Kingdom');


-- 3. 
SELECT name, continent FROM world
  WHERE continent = 
    (SELECT continent FROM world
    WHERE name='Argentina' OR name='Australia')
  ORDER BY name;

-- 4. 
SELECT name, continent FROM world
  WHERE continent = 
    (SELECT continent FROM world
    WHERE name='Argentina')
  OR continent = 
    (SELECT continent FROM world
    WHERE name='Australia')
  ORDER BY name;

-- 5. 
SELECT name, population FROM world
  WHERE population > 
    (SELECT population FROM world
    WHERE name='United Kingdom')
  AND population < 
    (SELECT population FROM world
    WHERE name='Germany');

-- 6. 
SELECT name, 
       CONCAT(ROUND((population/(SELECT population 
                                FROM world
                                WHERE name='Germany'))
        *100),'%') AS Percentage
FROM world
WHERE continent = 'Europe';

-- 7. 
SELECT name FROM world
  WHERE gdp > (SELECT MAX(gdp) AS GDP FROM world
              WHERE continent = 'Europe');


-- 8. 

-- 9. 

-- 10. 

-- 11. 

-- 12. 

-- 13. 

-- 14.

-- 15. 