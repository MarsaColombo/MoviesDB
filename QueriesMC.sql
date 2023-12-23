SELECT title, release_year FROM Movie
ORDER BY release_year DESC;

-- Show actors by name when age above 30
    SELECT lastname, firstname, birthdate, EXTRACT(YEAR FROM AGE(birthdate)) AS age FROM Actor
    WHERE EXTRACT(YEAR FROM AGE(birthdate)) >= 30
    ORDER BY lastname, firstname;


-- Show actors by film and lead role
    SELECT lastname, firstname, title, is_lead_role FROM Actor
    JOIN Movie_Actor ON Actorid = Movie_Actor.FK_ActorID
    JOIN Movie ON Movieid = Movie_Actor.FK_MovieID
    ORDER BY lastname, firstname, title;

-- Show association between actors and movies
SELECT FK_ActorID, FK_MovieID, is_lead_role FROM Movie_Actor
WHERE FK_MovieID = 4;

--Show List of films
SELECT title, release_year FROM Movie
ORDER BY release_year DESC;

--Show List of actors
SELECT
    ActorID,
    firstname,
    lastname,
    birthdate,
    Actor.created_date,
    Actor.modified_date
FROM
    Actor
ORDER BY
    created_date DESC
LIMIT 3;

