create table if not exists Genre (
	id SERIAL primary key,
	name VARCHAR(40) UNIQUE not null
);
create table if not exists Singer (
	id SERIAL primary key,
	name VARCHAR(60) not null
);
create table if not exists Genre_Singer (
	genre_id INTEGER references Genre(id),
	singer_id INTEGER references Singer(id),
	constraint GS primary key (genre_id, singer_id)
);

create table if not exists Album (
	id SERIAL primary key,
	name VARCHAR(40) not null,
	yearofrelease Integer not null check (yearofrelease > 1887) 
);
create table if not exists Singer_Album (
	singer_id INTEGER references Singer(id),
	album_id INTEGER references Album(id),
	constraint SA primary key (singer_id, album_id)
);

create table if not exists Track (
	id SERIAL primary key,
	album_id INTEGER not null references Album(id),
	duration time not null,
	name VARCHAR(60) not null
);

create table if not exists Collection (
	id SERIAL primary key,
	yearofrelease Integer not null check (yearofrelease > 1887),
	name VARCHAR(60) not null
);
create table if not exists Track_Collection (
	track_id INTEGER references Track(id),
	collection_id INTEGER references Collection(id),
	constraint TC primary key (track_id, collection_id)
);