select COUNT(source.title), source.title
from source
GROUP BY source.title, source.title
ORDER BY COUNT(source.title)