-- 6 - Écrire une requête qui retourne les titres des films réalisés par le réalisateur Woddy Allen.
SELECT 
    title
FROM
    movie m
        INNER JOIN
    movie_direction md ON m.id = md.movie_id
        INNER JOIN
    staff s ON md.staff_id = s.id
WHERE
    firstname = 'woody'
        AND lastname = 'allen';