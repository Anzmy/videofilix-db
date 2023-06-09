-- 15 - Écrire une requête qui retourne le nom du film et du réalisateur (prénom et nom) don le rôle de Sean Maguire a été joué.
-- select mc.starred_as, m.title, CONCAT(s.firstname, ' ', s.lastname) as realisateur
-- from movie_casting mc
-- inner join movie m on m.id = mc.movie_id
-- inner join movie_direction md on md.movie_id = m.id
-- inner join staff s on s.id = md.staff_id
-- where starred_as like '%sean%';


SELECT 
    title, firstname, lastname
FROM
    staff s
        INNER JOIN
    movie_direction md ON s.id = md.staff_id
        INNER JOIN
    movie m ON m.id = md.movie_id
WHERE
    m.id IN (SELECT 
            movie_id
        FROM
            movie_casting mc
                INNER JOIN
            movie m ON mc.movie_id = m.id
        WHERE
            starred_as LIKE 'Sean Maguire');