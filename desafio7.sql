SELECT
  artist.artist_name AS artista,
  album.album_name AS album,
  COUNT(follow.artist_id) AS seguidores
FROM SpotifyClone.artist AS artist
JOIN SpotifyClone.album AS album ON artist.artist_id = album.artist_id
JOIN SpotifyClone.follow AS follow ON artist.artist_id = follow.artist_id
GROUP BY artista, album ORDER BY seguidores DESC, artista, album;