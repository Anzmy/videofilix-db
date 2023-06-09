-- 31 - Ecrire une requete qui retourne le mois ou on a vu le plus de film toute années confondu.
SELECT 
    COUNT(*) AS nb_visionnage,
    MONTH(created_at) AS mois,
    YEAR(created_at) AS annee
FROM
    movie_watch
GROUP BY mois , annee
ORDER BY nb_visionnage DESC
LIMIT 1;