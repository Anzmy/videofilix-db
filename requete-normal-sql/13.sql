-- 13 - Écrire une requête qui retourne le prénom, nom et role joué de tous les acteurs qui ont joué dans le film «Annie Hall».
SELECT 
    firstname, lastname, starred_as
FROM
    movie_casting mc
        INNER JOIN
    staff s ON mc.staff_id = s.id
        INNER JOIN
    movie m ON mc.movie_id = m.id
WHERE
    m.title LIKE 'Annie Hall';