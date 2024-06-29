INSERT INTO genres (name) VALUES ('Rap'), ('Pop'), ('Rock');

INSERT INTO artists (name) VALUES ('Моргенштерн'), ('Паша Техник'), ('Пугачева'), ('Леонид Агутин');

INSERT INTO albums (title, release_year) VALUES 
('AlbumOne', '2019-01-01'), 
('AlbumTwo', '2020-01-01'), 
('AlbumThree', '2018-01-01');

INSERT INTO tracks (album_id, title, duration) VALUES 
(1, 'TrackOne', 3.0), 
(1, 'TrackTwo', 4.0), 
(2, 'TrackThree', 3.5),
(2, 'TrackFour', 2.8),
(3, 'TrackFive', 3.2), 
(3, 'TrackSix', 5.0);

INSERT INTO collection (name, release_year) VALUES 
('CollectionOne', '2019-01-01'), 
('CollectionTwo', '2020-01-01'), 
('CollectionThree', '2018-01-01'), 
('CollectionFour', '2019-01-01');

INSERT INTO artist_genres (artist_id, gener_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 1), 
(4, 2);

INSERT INTO artist_album (artist_id, album_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 1);

INSERT INTO collection_tracks (collection_id, track_id) VALUES 
(1, 1), 
(1, 2), 
(2, 3), 
(2, 4), 
(3, 5), 
(3, 6), 
(4, 1), 
(4, 3);