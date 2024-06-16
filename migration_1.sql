CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year TIMESTAMP
);

CREATE TABLE tracks (
    id SERIAL PRIMARY KEY,
    album_id INT REFERENCES albums(id),
    title VARCHAR(255) NOT NULL,
    duration REAL

);

CREATE TABLE collection (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    release_year TIMESTAMP
);

CREATE TABLE artist_genres (
    id SERIAL PRIMARY KEY,
    artist_id INT REFERENCES artists(id),
    gener_id INT REFERENCES genres(id)
);

CREATE TABLE artist_album (
    id SERIAL PRIMARY KEY,
    artist_id INT REFERENCES artists(id),
    album_id INT REFERENCES albums(id)
);

CREATE TABLE collection_tracks (
    collection_id INT REFERENCES collection(id),
    track_id INT REFERENCES tracks(id),
    PRIMARY KEY (collection_id, track_id)
);
