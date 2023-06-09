-- 14 - Écrire une requête qui retourne le prénom et nom du réalisateur de "Eyes Wide Shut" ainsi que l'année de sortie du film.
SELECT 
    firstname, lastname, YEAR(released_at)
FROM
    movie_direction md
        INNER JOIN
    staff s ON md.staff_id = s.id
        INNER JOIN
    movie m ON md.movie_id = m.id
WHERE
    m.title LIKE 'Eyes Wide Shut';
 