-- 29 - Ecrire une requete qui retourne le total des films vues par mois de l'année 2019 et 2020
SELECT 
    COUNT(*) AS nb_of_movies,
    MONTH(created_at) AS mois,
    YEAR(created_at) AS annee
FROM
    movie_watch
GROUP BY mois , annee
HAVING annee = 2019 OR annee = 2020
order by annee, mois;