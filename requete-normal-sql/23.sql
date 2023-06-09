-- 23 - Ecrire une requete qui retourne les 10 plus gros consommateurs de films dans l'ordre croissant. Afficher le nom complet sur une seule colonne et le temps de visualisation est à retourner.
SELECT 
    CONCAT(firstname, ' ', lastname) AS fullname,
    SUM(time_watched) AS conso
FROM
    movie_watch mw
        INNER JOIN
    user u ON mw.user_id = u.id
GROUP BY user_id
ORDER BY conso DESC
LIMIT 10;