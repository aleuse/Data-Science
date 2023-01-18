/*Mostrar de la tabla posts la fecha máxima o las más actual*/
SELECT MAX(fechaPublicacion)
FROM posts;
    
SELECT * 
FROM posts
WHERE fechaPublicacion= (
	SELECT MAX(fechaPublicacion)
    FROM posts
);

