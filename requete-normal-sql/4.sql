-- 4 - Écrire une requête qui retourne le titre, l'année, la date de sortie du film, le réalisateur et acteurs de films qui n'ont aucune critique.
SELECT 
    title, year, released_at, firstname, lastname, roles
FROM
    staff s
        INNER JOIN
    movie_direction md ON s.id = md.staff_id
        INNER JOIN
    movie m ON md.movie_id = m.id
        LEFT JOIN
    movie_review mr ON mr.movie_id = m.id
WHERE
    mr.movie_id IS NULL 
UNION SELECT 
    title, year, released_at, firstname, lastname, roles
FROM
    staff s
        INNER JOIN
    movie_casting mc ON s.id = mc.staff_id
        INNER JOIN
    movie m ON mc.movie_id = m.id
        LEFT JOIN
    movie_review mr ON mr.movie_id = m.id
WHERE
    mr.movie_id IS NULL
ORDER BY title;
