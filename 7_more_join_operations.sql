-- 1. 
SELECT id,
    title
FROM movie
WHERE yr = 1962;

-- 2. 
SELECT yr
FROM movie
WHERE title = 'Citizen Kane';

-- 3. 
SELECT id,
    title,
    yr
FROM movie
WHERE title like 'Star Trek%'
ORDER BY yr;

-- 4. 
SELECT id
FROM actor
WHERE name = 'Glenn Close';

-- 5. 
SELECT id
FROM movie
WHERE title = 'Casablanca';

-- 6. 
SELECT DISTINCT name
FROM actor
    JOIN casting ON id = actorid
WHERE movieid = 11768;

-- 7. 
SELECT name
FROM movie
    JOIN casting ON movie.id = movieid
    JOIN actor ON casting.actorid = actor.id
WHERE title = 'Alien';

-- 8. 
SELECT title
FROM movie
    JOIN casting ON movie.id = movieid
    JOIN actor ON casting.actorid = actor.id
WHERE name = 'Harrison Ford';

-- 9. 
SELECT title
FROM movie
    JOIN casting ON movie.id = movieid
    JOIN actor ON casting.actorid = actor.id
WHERE name = 'Harrison Ford'
    AND ORD != 1;

-- 10. 
SELECT title,
    name
FROM movie
    JOIN casting ON movie.id = movieid
    JOIN actor ON casting.actorid = actor.id
WHERE yr = 1962
    AND ORD = 1;

-- 11. 
SELECT yr,
    COUNT(title)
FROM movie
    JOIN casting ON movie.id = movieid
    JOIN actor ON actorid = actor.id
WHERE name = 'Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2 

-- 12. 
SELECT title,
    name
FROM movie
    JOIN casting on (
        movieid = movie.id
        AND ord = 1
    )
    JOIN actor ON (actorid = actor.id)
WHERE movie.id IN(
        SELECT movieid
        FROM casting
        WHERE actorid IN (
                SELECT id
                FROM actor
                WHERE name = 'Julie Andrews'
            )
    );

-- 13. 
SELECT name
FROM movie
    JOIN casting ON movie.id = movieid
    JOIN actor ON actorid = actor.id
WHERE ORD = 1
GROUP BY name
HAVING COUNT(name) > 14;

-- 14.
SELECT title,
    count(name)
FROM movie
    JOIN casting ON movie.id = movieid
    JOIN actor ON actorid = actor.id
WHERE yr = 1978
GROUP BY title
ORDER BY count(name) desc,
    title;
    
-- 15. 
SELECT name
FROM movie
    JOIN casting ON movie.id = movieid
    JOIN actor ON actorid = actor.id
WHERE name != 'Art Garfunkel'
    AND movieid IN (
        SELECT movieid
        FROM movie
            JOIN casting ON movie.id = movieid
            JOIN actor ON actorid = actor.id
        WHERE name = 'Art Garfunkel'
    );