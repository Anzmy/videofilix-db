-- 11 - Écrire une requête qui retourne le titre du film qui a le plus grand nombre d'étoiles par genre. Le titre du film apparaît par ordre alphabétique.
SELECT 
    type, title, nb_stars 
FROM (
SELECT 
	g.type, 
    title, 
    SUM(stars) AS nb_stars, 
    ROW_NUMBER() OVER (PARTITION BY g.type ORDER BY SUM(stars) DESC) AS rn
    FROM movie m
        INNER JOIN
    movie_review mr ON m.id = mr.movie_id
        INNER JOIN
    movie_genre mg ON m.id = mg.movie_id
        INNER JOIN
    genre g ON mg.genre_id = g.id
GROUP BY title , g.type) sous_rqt
WHERE rn=1
ORDER BY type , nb_stars DESC;

