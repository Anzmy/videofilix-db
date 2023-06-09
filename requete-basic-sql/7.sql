-- 7 - Écrire une requête qui retourne les titres de tous les films qui n'ont pas de notes.
SELECT 
    title
FROM
    movie
        LEFT JOIN
    movie_review ON movie.id = movie_review.movie_id
WHERE
    movie_review.movie_id IS NULL;