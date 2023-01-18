SELECT * 
FROM usuarios;

/*LEFT JOIN*/
SELECT * 
FROM usuarios
LEFT JOIN posts
ON usuarios.idUsuario = posts.idUsuario;

/*LEFT JOIN EXCLUYENTE*/
SELECT * 
FROM usuarios
LEFT JOIN posts
ON usuarios.idUsuario = posts.idUsuario
WHERE posts.idUsuario IS NULL;

/*RIGHT JOIN*/
SELECT * 
FROM usuarios
RIGHT JOIN posts
ON usuarios.idUsuario = posts.idUsuario;

/*RIGHT JOIN EXCLUYENTE*/
SELECT * 
FROM usuarios
RIGHT JOIN posts
ON usuarios.idUsuario = posts.idUsuario
WHERE posts.idUsuario IS NULL;

/*INNER JOIN INTERSECCIÓN*/
SELECT *
FROM usuarios
INNER JOIN posts
ON usuarios.idUsuario = posts.idUsuario;

/*FULL OUTER JOIN UNIÓN*/
SELECT *
FROM usuarios
LEFT JOIN posts
ON usuarios.idUsuario = posts.idUsuario
UNION
SELECT *
FROM usuarios
RIGHT JOIN posts
ON usuarios.idUsuario = posts.idUsuario;

/*FULL OUTER JOIN UNIÓN*/
SELECT *
FROM usuarios
LEFT JOIN posts
ON usuarios.idUsuario = posts.idUsuario
UNION
SELECT *
FROM usuarios
RIGHT JOIN posts
ON usuarios.idUsuario = posts.idUsuario;

/*FULL OUTER JOIN EXCLUYENTE DIFERENCIA SIMÉTRICA*/
SELECT *
FROM usuarios
LEFT JOIN posts
ON usuarios.idUsuario = posts.idUsuario
WHERE posts.idUsuario IS NULL
UNION
SELECT *
FROM usuarios
RIGHT JOIN posts
ON usuarios.idUsuario = posts.idUsuario
WHERE posts.idUsuario IS NULL;