-- Задание 2

-- Название и продолжительность самого длительного трека
SELECT title, duration 
FROM tracks 
ORDER BY duration DESC 
LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут
SELECT title 
FROM tracks 
WHERE duration >= 3.5;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name 
FROM collection 
WHERE release_year BETWEEN '2018-01-01' AND '2020-12-31';


-- Исполнители, чьё имя состоит из одного слова
SELECT name 
FROM artists 
WHERE name NOT LIKE '% %';


-- Название треков, которые содержат слово «мой» или «my»
SELECT title 
FROM tracks 
WHERE title ILIKE '%мой%' OR title ILIKE '%my%';

-- Задание 3

-- Количество исполнителей в каждом жанре
SELECT g.name, COUNT(ag.artist_id) AS artist_count 
FROM genres g
JOIN artist_genres ag ON g.id = ag.gener_id
GROUP BY g.name;

-- Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(t.id) AS track_count 
FROM tracks t
JOIN albums a ON t.album_id = a.id 
WHERE a.release_year BETWEEN '2019-01-01' AND '2020-12-31';

-- Средняя продолжительность треков по каждому альбому
SELECT a.title, AVG(t.duration) AS avg_duration 
FROM albums a
JOIN tracks t ON a.id = t.album_id 
GROUP BY a.title;

-- Все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT ar.name 
FROM artists ar
JOIN artist_album aa ON ar.id = aa.artist_id
JOIN albums a ON aa.album_id = a.id
WHERE a.release_year != '2020-01-01';

-- Названия сборников, в которых присутствует конкретный исполнитель
SELECT c.name 
FROM collection c
JOIN collection_tracks ct ON c.id = ct.collection_id
JOIN tracks t ON ct.track_id = t.id
JOIN albums a ON t.album_id = a.id
JOIN artist_album aa ON a.id = aa.album_id
JOIN artists ar ON aa.artist_id = ar.id
WHERE ar.name = 'ArtistOne';