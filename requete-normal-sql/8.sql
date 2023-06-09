-- 8 - Écrire une requête qui retourne les titres des films FR et US qui n'ont pas été visualisé.
SELECT 
    title
FROM
    movie m
        LEFT JOIN
    movie_watch mw ON m.id = mw.movie_id
WHERE
    time_watched IS NULL;