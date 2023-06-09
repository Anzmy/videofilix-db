-- 21 - Écrire une requête qui calcule la durée moyenne de chaque genre de film
SELECT 
    g.type, AVG(m.time) AS duree_moyenne
FROM
    genre g
        INNER JOIN
    movie_genre mg ON g.id = mg.genre_id
        INNER JOIN
    movie m ON m.id = mg.movie_id
GROUP BY g.type;