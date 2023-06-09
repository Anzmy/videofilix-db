-- 6 - Écrire une requête qui retourne le nom de tous les utilisateurs qui ont attribué 6 étoiles ou plus à un film
SELECT DISTINCT
    firstname, lastname
FROM
    user
        INNER JOIN
    movie_review ON user.id = movie_review.user_id
        AND stars >= 6;