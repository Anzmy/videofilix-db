-- 25 - Ecrire une requete qui retourne les trois films les plus vues ainsi que leur note moyenne arrondi à l'entier supérieur.
SELECT 
    title,
    SUM(time_watched) AS ttw,
    CAST(CEIL(AVG(stars)) AS SIGNED) AS note_moyenne
FROM
    movie m
        INNER JOIN
    movie_watch mw ON m.id = mw.movie_id
        INNER JOIN
    movie_review mr ON m.id = mr.user_id
GROUP BY m.id
ORDER BY ttw DESC
LIMIT 3;
    