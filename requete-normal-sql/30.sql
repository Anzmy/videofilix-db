-- 30 - Ecrire une requete qui retourne le temps de visualisation mensuel pour toutes utilisateurs de l'année 2021
SELECT 
    CONCAT(firstname, ' ', lastname),
    MONTH(created_at) AS month,
    SUM(time_watched) AS conso_mensuel
FROM
    user u
        INNER JOIN
    movie_watch mw ON u.id = mw.user_id
WHERE
    YEAR(created_at) = 2021
GROUP BY u.id , MONTH(created_at);