-- 20 - Écrire une requête qui retourne tous les films sorti avant le 1er janvier 1989 avec le titre, l'année, la date de sortie, la durée du film et le prénom et le nom du réalisateur et 
-- triez l'ensemble des résultats en fonction de la date de sortie de la date la plus récente à la plus ancienne.
SELECT 
    title,
    year,
    released_at,
    time,
    CONCAT(firstname, ' ', lastname) AS realisateur
FROM
    movie m
        INNER JOIN
    movie_direction md ON m.id = md.movie_id
        INNER JOIN
    staff s ON s.id = md.staff_id
WHERE
    YEAR(released_at) < 1989;
