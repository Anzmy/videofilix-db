-- 16 - Écrire une requête qui retourne tous les acteurs qui n'ont joué dans aucun film entre 1990 et 2000.
SELECT 
    firstname, lastname
FROM
    staff s
        INNER JOIN
    movie_casting mc ON s.id = mc.staff_id
        INNER JOIN
    movie m ON mc.movie_id = m.id
WHERE
    year < 1990 OR year > 2000;