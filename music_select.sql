select name, duration
from track
order by duration DESC
limit 1;

select name, duration
from track
where duration >= '00:03:30'
order by duration desc;

select name
from collection
where (yearofrelease >= 2018) and (yearofrelease <= 2020);

select name
from singer
where not name like '% %';

select name
from track
where name like '%My%';


select genre.name, count(singer.name)
from genre 
left join genre_singer on genre.id = genre_singer.genre_id
left join singer on genre_singer.singer_id = singer.id
group by genre.name
order by count(singer.id) desc;

select track.name, album.yearofrelease
from album 
left join track on track.album_id = album.id
where (album.yearofrelease >= 2019) and (album.yearofrelease <= 2020);

select album.name, AVG(track.duration)
from album
left join track on track.album_id = album.id
group by album.name
order by AVG(track.duration);

select distinct singer.name
from singer 
where singer.name not in (
    select distinct singer.name
    from singer 
    left join Singer_Album on singer.id = Singer_Album.singer_id
    left join album on album.id = Singer_Album.album_id
    where album.yearofrelease = 2020
)
order by singer.name;

select distinct collection.name
from collection 
left join Track_Collection on collection.id = Track_Collection.collection_id
left join track on track.id = Track_Collection.track_id
left join album on album.id = track.album_id
left join Singer_Album on Singer_Album.album_id = album.id
left join singer on singer.id = Singer_Album.singer_id
where singer.name like '%LJ%'
order by collection.name;


