-- 9 - Écrire une requête qui retourne les noms de tous les utlisateurs qui n'ont pas noté.
SELECT 
	CONCAT(firstname, ' ',lastname) as fullname
FROM
    user u
        LEFT JOIN
    movie_review mr ON u.id = mr.user_id
WHERE
    mr.user_id IS NULL;