/*WHERE*/
SELECT * 
FROM posts
WHERE idPost <50;

/*WHERE CON CADENA*/
SELECT *
FROM posts
WHERE estatus != "inactivo";

/*WHERE CON LIKE QUE TENGA*/
SELECT *
FROM posts
WHERE titulo LIKE "%lo%";

/*WHERE CON LIKE QUE EMPIECE*/
SELECT *
FROM posts
WHERE titulo LIKE "lo%";

/*WHERE CON LIKE QUE TERMINE*/
SELECT *
FROM posts
WHERE titulo LIKE "%lo";

/*WHERE CON BETWEEN*/
SELECT *
FROM posts
WHERE YEAR(fechaPublicacion) BETWEEN 2023 AND 2024;

/*WHERE CON IN*/
SELECT * 
FROM posts
WHERE idPost IN (50, 34, 44, 49, 63);

/*WHERE CON IS NULL*/
SELECT * 
FROM posts
WHERE idUsuario IS NULL;

/*WHERE CON IS NOT NULL*/
SELECT * 
FROM posts
WHERE idUsuario IS NOT NULL;

/*WHERE CON AND*/
SELECT * 
FROM posts
WHERE idUsuario IS NOT NULL AND idPost < 50;

/*WHERE CON OR*/
SELECT * 
FROM posts
WHERE idPost < 50 OR YEAR(fechaPublicacion) = 2022;

/*WHERE CON NOT*/
SELECT * 
FROM posts
WHERE NOT estatus = "activo";