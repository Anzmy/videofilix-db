-- 12 - Écrire une requête qui retourne les noms de tous les utilisateurs qui ont noté le film American Beauty.
SELECT 
    firstname, lastname
FROM
    user u
        INNER JOIN
    movie_review mr ON u.id = mr.user_id
        INNER JOIN
    movie m ON m.id = mr.movie_id
WHERE
    m.title LIKE 'American Beauty';