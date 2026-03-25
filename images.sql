SELECT  person.given_name, person.surname, AR.ref_class, BR.ref_class, CR.ref_class

FROM event,
     reference as AR,
     person,
     reference as BR
	 
LEFT JOIN reference as CR
        ON BR.ref_handle = CR.obj_handle
       AND CR.ref_handle = '102017670d2d1cdef4a4fff59ee2'
       AND CR.ref_class='Media' 

WHERE  event.description like '%Quaker%'
   and event.handle = AR.ref_handle
   and BR.ref_handle = AR.obj_handle
   and AR.ref_class = 'Event'
   and AR.obj_handle = person.handle


 
