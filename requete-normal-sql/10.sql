-- 10 - Écrire une requête qui retourne les utilisateurs qui ont noté plus d'un film.
SELECT 
    firstname, lastname, COUNT(*) AS occurences
FROM
    user u
        INNER JOIN
    movie_review mr ON u.id = mr.user_id
GROUP BY mr.user_id
HAVING occurences > 1;