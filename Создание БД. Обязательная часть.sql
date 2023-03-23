CREATE TABLE IF NOT EXISTS Genre (
	genre_ID INTEGER PRIMARY KEY,
	name_genre TEXT
);

CREATE TABLE IF NOT EXISTS Artist (
	artist_ID INTEGER PRIMARY KEY,
	name_alias TEXT
);

CREATE TABLE IF NOT EXISTS Genre_Artist (
	genre_ID INTEGER REFERENCES Genre(genre_ID),
	artist_ID INTEGER REFERENCES Artist(artist_ID),
	CONSTRAINT pk PRIMARY KEY (genre_ID, artist_ID)
);

CREATE TABLE IF NOT EXISTS Album (
	album_ID INTEGER PRIMARY KEY,	
	name_album TEXT,
	year_of_production INTEGER
);

CREATE TABLE IF NOT EXISTS Album_Artist (
	album_ID INTEGER REFERENCES Album(album_ID),
	artist_ID INTEGER REFERENCES Artist(artist_ID),
	CONSTRAINT pk1 PRIMARY KEY (album_ID, artist_ID)
);

CREATE TABLE IF NOT EXISTS Track (
	track_ID INTEGER PRIMARY KEY,
	name_track TEXT,
	lenght TIME,
	album_ID INTEGER REFERENCES Album(album_ID)
);

CREATE TABLE IF NOT EXISTS Collection (
	collection_ID INTEGER PRIMARY KEY,
	name_collection TEXT,
	year_of_release INTEGER
);

CREATE TABLE IF NOT EXISTS Track_Collection (
	track_ID INTEGER REFERENCES Track(track_ID),
	collection_ID INTEGER REFERENCES Collection(collection_ID),
	CONSTRAINT pk2 PRIMARY KEY (track_ID, collection_ID)
);