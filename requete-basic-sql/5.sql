-- 5 - Écrire une requête qui retourne le nom de tous les utilisateurs qui ont commenté des films
SELECT DISTINCT
    firstname, lastname
FROM
    user
        INNER JOIN
    movie_review ON user.id = movie_review.user_id
ORDER BY firstname;