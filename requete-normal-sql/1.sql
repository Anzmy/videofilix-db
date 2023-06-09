-- 1 - Écrire une requête qui retourne toutes les informations des acteurs qui ont joué un rôle dans le film «Annie Hall».
-- explain
-- SELECT 
--     title, roles, firstname, lastname, gender
-- FROM
--     movie
--         INNER JOIN
--     movie_direction ON movie.id = movie_direction.movie_id
--         INNER JOIN
--     movie_casting ON movie.id = movie_casting.movie_id
--         INNER JOIN
--     staff ON movie_direction.staff_id = staff.id
-- WHERE
--     title LIKE 'Annie Hall' 
-- UNION SELECT 
--     title, roles, firstname, lastname, gender
-- FROM
--     movie
--         INNER JOIN
--     movie_casting ON movie.id = movie_casting.movie_id
--         INNER JOIN
--     staff ON movie_casting.staff_id = staff.id
-- WHERE
--     title LIKE 'Annie Hall';

SELECT 
    title, firstname, lastname, gender, s.country, m.id
FROM
    movie_casting mc
        INNER JOIN
    staff s ON mc.staff_id = s.id
        INNER JOIN
    movie m ON mc.movie_id = m.id
WHERE
    title LIKE 'Annie Hall';