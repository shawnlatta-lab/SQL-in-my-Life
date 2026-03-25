select distinct (person.handle), person.given_name, person.surname
from citation, source, reference as q, reference as y, person
where citation.handle = q.obj_handle
  and q.ref_handle = source.handle
  and q.obj_handle = y.ref_handle 
  and y.obj_handle = person.handle
  and source.title like '%[GILLESPIE] Ancestry of Elizabeth Barrett Gillespie%'