-- 24 - Ecrire une requete qui retourne les 5 moins gros consommateurs de film dans l'ordre croissant. Afficher le nom complet sur une seule colonne, l'email et le temps de visualisation est à retourner.
SELECT 
    CONCAT(firstname, ' ', lastname) AS fullname,
    email,
    SUM(time_watched) AS conso
FROM
    movie_watch mw
        INNER JOIN
    user u ON mw.user_id = u.id
GROUP BY user_id
ORDER BY conso
LIMIT 5;