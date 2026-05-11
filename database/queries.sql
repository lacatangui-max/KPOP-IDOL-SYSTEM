-- Show all groups
SELECT * FROM groups;

-- Show BTS members
SELECT stage_name, real_name
FROM idols
WHERE group_id = 1;

-- Show albums of BLACKPINK
SELECT album_name, release_date
FROM albums
WHERE group_id = 2;

-- Show songs from BTS albums
SELECT songs.title, albums.album_name
FROM songs
JOIN albums
ON songs.album_id = albums.album_id
WHERE albums.group_id = 1;

-- Count idols per group
SELECT groups.group_name, COUNT(idols.idol_id) AS total_members
FROM groups
JOIN idols
ON groups.group_id = idols.group_id
GROUP BY groups.group_name;

-- Show all albums and their groups
SELECT albums.album_name, groups.group_name
FROM albums
JOIN groups
ON albums.group_id = groups.group_id;