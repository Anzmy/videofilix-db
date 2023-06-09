-- 3 - Écrire une requête qui retourne le(s) film(s) sorti en 1999.
SELECT 
    title, YEAR(released_at) AS year
FROM
    movie
WHERE
    YEAR(released_at) LIKE 1999;