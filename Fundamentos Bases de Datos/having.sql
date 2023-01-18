/*HAVING*/
SELECT MONTHNAME(fechaPublicacion) AS postMonth, estatus, COUNT(*) AS postQuantity
FROM posts
GROUP BY estatus, postMonth
HAVING postQuantity > 1 AND postMonth IN ("April", "December", "May", "January")
ORDER BY postMonth ASC;

