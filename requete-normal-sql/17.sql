-- 17 - Écrire une requête qui retourne le prénom et le nom des réalisateurs avec le nombre de genres de films dirigés et classer le résultat par ordre alphabétique avec le prénom et le nom du réalisateur.
SELECT 
    CONCAT(firstname, ' ', lastname) AS fullname,
    COUNT(*) AS nb_genre
FROM
    genre g
        INNER JOIN
    movie_genre mg ON g.id = mg.genre_id
        INNER JOIN
    movie_direction md ON mg.movie_id = md.movie_id
        INNER JOIN
    staff s ON s.id = md.staff_id
GROUP BY fullname
ORDER BY fullname;