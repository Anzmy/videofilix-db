-- 26 - Ecrire une requete qui retourne les films vues mais jamais noté.
SELECT DISTINCT
    title, stars
FROM
    movie m
        INNER JOIN
    movie_watch mw ON m.id = mw.movie_id
        LEFT JOIN
    movie_review mr ON m.id = mr.movie_id
WHERE
    stars IS NULL
        AND time_watched IS NOT NULL;