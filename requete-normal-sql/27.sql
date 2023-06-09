-- 27 - Ecrire une requete qui retourne les genres de films les plus vues de l'année de 1997.
SELECT 
    g.type, SUM(time_watched) AS ttw
FROM
    genre g
        INNER JOIN
    movie_genre mg ON g.id = mg.genre_id
        INNER JOIN
    movie_watch mw ON mg.movie_id = mw.movie_id
WHERE
    YEAR(created_at) = 2020
GROUP BY g.type
ORDER BY ttw DESC;