select count(source.title), source.title

from source, reference, citation

 where reference.ref_handle = source.handle
   
group by source.title
order by count(source.title)