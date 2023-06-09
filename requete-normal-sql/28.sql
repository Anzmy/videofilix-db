-- 28 - Ecrire une requete qui retourne les utilisateurs qui n'ont vu aucun film.
SELECT DISTINCT
    CONCAT(firstname, ' ', lastname) AS fullname
FROM
    user u
        LEFT JOIN
    movie_watch mw ON u.id = mw.user_id
WHERE
    time_watched IS NULL;