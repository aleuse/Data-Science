/*GROUP BY*/
SELECT estatus, COUNT(*) postQuantity
FROM posts
GROUP BY estatus;

/**/
SELECT YEAR(fechaPublicacion) AS postYear, COUNT(*) AS postQuantity
FROM posts
GROUP BY postYear;

/**/
SELECT estatus, MONTH(fechaPublicacion) AS postMonth, COUNT(*) AS postQuantity
FROM posts
GROUP BY estatus, postMonth;