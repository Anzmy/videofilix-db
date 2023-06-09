-- 22 - Écrire une requête qui retourne le nombre de films et leur note moyenne par genre et dont la note est supérieur à 4.
SELECT 
    type, COUNT(*) AS nb, AVG(stars) AS moyenne
FROM
    movie_genre mg
        INNER JOIN
    genre g ON mg.genre_id = g.id
        LEFT JOIN
    movie_review mr ON mr.movie_id = mg.movie_id
GROUP BY g.type
HAVING moyenne >= 4;
