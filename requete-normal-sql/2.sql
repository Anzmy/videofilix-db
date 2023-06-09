-- 2 - Écrire une requête qui retourne le nom et prénom du réalisateur qui a réalisé un film dont il a joué un rôle.
SELECT 
    firstname, lastname, mc.movie_id, md.movie_id
FROM
    staff s
        INNER JOIN
    movie_casting mc ON s.id = mc.staff_id
        INNER JOIN
    movie_direction md ON s.id = md.staff_id
WHERE
    mc.movie_id = md.movie_id;