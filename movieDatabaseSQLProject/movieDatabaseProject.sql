CREATE TABLE films (
  name TEXT,
  release_year INTEGER
);

INSERT INTO films (name, release_year)
VALUES ('Tuck Everlasting', 2002);

INSERT INTO films (name, release_year)
VALUES ('Monsters, Inc.', 2001);

INSERT INTO films (name, release_year)
VALUES ('Matilda', 1996);

SELECT * FROM films WHERE release_year = 1996;

ALTER TABLE films ADD COLUMN runtime INTEGER;
ALTER TABLE films ADD COLUMN genre TEXT;
ALTER TABLE films ADD COLUMN rating REAL;

UPDATE films
SET runtime = 130,
    genre = 'drama',
    rating = 6.6, 
WHERE name = 'Tuck Everlasting';

UPDATE films
SET runtime = 92,
    genre = 'animation',
    rating = 8,   
WHERE name = 'Monsters, Inc.';

UPDATE films
SET runtime = 142,
    genre = 'family',
    rating = 6.9, 
WHERE name = 'Matilda';

ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);