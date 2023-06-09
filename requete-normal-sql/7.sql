-- 7 - Écrire une requête qui retourne les années par ordre croissant ou au moins un film a été produit et qui ont reçu une note de plus de 3 étoiles.
SELECT 
    year
FROM
    movie m
        INNER JOIN
    movie_review mr ON m.id = mr.movie_id
WHERE
    stars > 3
ORDER BY year;