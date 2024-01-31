insert into genre (name)
values ('Alternative rock');
insert into genre (name)
values ('Hip hop');
insert into genre (name)
values ('Pop music');
insert into genre (name)
values ('Heavy metal');

insert into singer (name)
values ('Linkin Park');
insert into singer (name)
values ('LJ');
insert into singer (name)
values ('Alla Pugacheva');
insert into singer (name)
values ('Metallica');

insert into genre_singer (genre_id, singer_id)
values (1, 1);
insert into genre_singer (genre_id, singer_id)
values (2, 2);
insert into genre_singer (genre_id, singer_id)
values (3, 3);
insert into genre_singer (genre_id, singer_id)
values (4, 4);

insert into album (id, name, yearofrelease)
values (1, 'Hybrid Theory', 2000);
insert into album (id, name, yearofrelease)
values (2, 'Sayonara bоль', 2023);
insert into album (id, name, yearofrelease)
values (3, 'River tram', 2001);
insert into album (id, name, yearofrelease)
values (4, 'Death Magnetic', 2008);
insert into album (id, name, yearofrelease)
values (5, 'Sayonara Boy Opal', 2020);

insert into singer_album (singer_id, album_id)
values (1, 1);
insert into singer_album (singer_id, album_id)
values (2, 2);
insert into singer_album (singer_id, album_id)
values (3, 3);
insert into singer_album (singer_id, album_id)
values (4, 4);
insert into singer_album (singer_id, album_id)
values (2, 5);

insert into track (id, album_id, duration, name)
values (1, 1, '00:03:36', 'In the End');
insert into track (id, album_id, duration, name)
values (2, 2, '00:01:52', 'Harakiri');
insert into track (id, album_id, duration, name)
values (3, 3, '00:04:15', 'Madame Broshkina');
insert into track (id, album_id, duration, name)
values (4, 4, '00:05:00', 'My Apocalypse');
insert into track (id, album_id, duration, name)
values (5, 1, '00:02:37', 'One Step Closer');
insert into track (id, album_id, duration, name)
values (6, 2, '00:02:56', 'Forrest Gump');
insert into track (id, album_id, duration, name)
values (7, 5, '00:02:40', 'Krovostok');

insert into track_collection (track_id, collection_id)
values (1, 1);
insert into track_collection (track_id, collection_id)
values (2, 1);
insert into track_collection (track_id, collection_id)
values (2, 2);
insert into track_collection (track_id, collection_id)
values (3, 2);
insert into track_collection (track_id, collection_id)
values (3, 3);
insert into track_collection (track_id, collection_id)
values (4, 3);
insert into track_collection (track_id, collection_id)
values (4, 4);
insert into track_collection (track_id, collection_id)
values (5, 4);
insert into track_collection (track_id, collection_id)
values (6, 1);
insert into track_collection (track_id, collection_id)
values (7, 2);
insert into track_collection (track_id, collection_id)
values (5, 3);
insert into track_collection (track_id, collection_id)
values (7, 4);

insert into collection (yearofrelease, name)
values (2018, 'Summer');
insert into collection (yearofrelease, name)
values (2019, 'Autumn');
insert into collection (yearofrelease, name)
values (2019, 'Winter');
insert into collection (yearofrelease, name)
values (2020, 'Spring');


