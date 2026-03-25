--select count(source.title), source.title

--from source, reference, citation

--where reference.ref_handle = source.handle
   
--group by source.title
--order by count(source.title)

--UNION

select person.given_name, person.surname
from person,
     reference AS refA
where    person.handle = refA.obj_handle
and   refA.ref_handle != '10201765e2c7571f62bfc7d969e5'
and   refA.ref_class   = 'Media'
