-- 19 - Écrire une requête qui retourne tous les films avec l'année de sortie, le(s) genre(s) et le nom du réalisateur.
SELECT 
    title, YEAR(released_at), type, firstname, lastname
FROM
    staff s
        INNER JOIN
    movie_direction md ON s.id = md.staff_id
        INNER JOIN
    movie m ON md.movie_id = m.id
        INNER JOIN
    movie_genre mg ON m.id = mg.movie_id
        INNER JOIN
    genre g ON mg.genre_id = g.id