select count(place.title), place.title
 from place, event
 where place.title like '%North Carolina%'
--  and place.title like '%New York%'
    and event.place = place.handle

group by title
order by count(place.title)