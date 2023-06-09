-- 18 - Écrire une requête qui retourne tous les films avec l'année de sortie, l'année de production et le(s) genre(s).
SELECT 
    title, YEAR(released_at), year, type
FROM
    movie m
        INNER JOIN
    movie_genre mg ON m.id = mg.movie_id
        INNER JOIN
    genre g ON mg.genre_id = g.id
