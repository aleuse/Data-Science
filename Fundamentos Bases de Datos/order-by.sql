/*ORDER BY ASC*/
SELECT *
FROM posts
ORDER BY fechaPublicacion ASC;

/*ORDER BY DESC*/
SELECT *
FROM posts
ORDER BY fechaPublicacion DESC;


/*ORDER BY ASC CADENAS*/
SELECT *
FROM posts
ORDER BY titulo ASC;

/*ORDER BY DESC CADENAS*/
SELECT *
FROM posts
ORDER BY titulo DESC;

/*ORDER BY LIMIT*/
SELECT *
FROM posts
ORDER BY fechaPublicacion ASC
LIMIT 2;