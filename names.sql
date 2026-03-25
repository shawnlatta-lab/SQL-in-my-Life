select person.handle, person.given_name, person.surname
from person
where person.json_data like '%alternate_names":[{"private":false,"surname_list":[{"surname":"","prefix":%'