-- 1. 
SELECT yr,
  subject,
  winner
FROM nobel
WHERE yr = 1950;

-- 2. 
SELECT winner
FROM nobel
WHERE yr = 1962
  AND subject = 'literature';

-- 3. 
SELECT yr,
  subject
FROM nobel
WHERE winner = 'Albert Einstein';

-- 4. 
SELECT winner
FROM nobel
WHERE subject = 'Peace'
  AND yr > 1999;

-- 5. 
SELECT *
FROM nobel
WHERE yr BETWEEN 1980 AND 1989
  AND subject = 'literature';

-- 6. 
SELECT *
FROM nobel
WHERE winner IN (
    'Theodore Roosevelt',
    'Thomas Woodrow Wilson',
    'Jimmy Carter',
    'Barack Obama'
  );

-- 7. 
SELECT winner
FROM nobel
WHERE winner like 'John%';

-- 8. 
SELECT *
FROM nobel
WHERE yr = 1980
  AND subject = 'physics'
  OR yr = 1984
  AND subject = 'chemistry';

-- 9. 
SELECT *
FROM nobel
WHERE yr = 1980
  AND subject <> 'chemistry'
  AND subject <> 'medicine';

-- 10. 
SELECT *
FROM nobel
WHERE yr < 1910
  AND subject = 'Medicine'
  OR yr > 2003
  AND subject = 'Literature';

-- 11. 
SELECT *
FROM nobel
WHERE winner = 'PETER GRÜNBERG';

-- 12. 
SELECT *
FROM nobel
WHERE winner = "EUGENE O'NEILL";

-- 13. 
SELECT winner,
  yr,
  subject
FROM nobel
WHERE winner like 'Sir%'
ORDER BY yr DESC,
  winner;

-- 14.
SELECT winner,
  subject
FROM nobel
WHERE yr = 1984
ORDER BY subject IN ('physics', 'chemistry');
