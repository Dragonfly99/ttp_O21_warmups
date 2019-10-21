With Holidays AS (SELECT title, description,
CASE
WHEN title ILIKE '%Christmas%' THEN 'Christmas'
WHEN description ILIKE '%Christmas%' THEN 'Christmas'
When title ILIKE '%Halloween%' THEN 'Halloween'
When description ILIKE '%Halloween%' THEN 'Halloween'
When title ILIKE '%Thanksgiving%' THEN 'Thanksgiving'
When description ILIKE '%Thanksgiving%' THEN 'Thanksgiving'
When title ILIKE '%Valnetine%' THEN 'Valentines Day'
When description ILIKE '%Valentine%' THEN 'Valentines Day'
When title ILIKE '%NewYears%' THEN 'New Years'
When description ILIKE '%NewYears%' THEN 'New Years'
When title ILIKE '%Veterans Day%' THEN 'New Years'
When description ILIKE '%Veterans Day%' THEN 'New Years'
Else NULL
End AS Holiday
FROM film
Group by title, description, Holiday)
SELECT * 
FROM Holidays;




With Holidays AS (SELECT title, description,
CASE
WHEN title ILIKE '%Christmas%' THEN 'Christmas'
WHEN description ILIKE '%Christmas%' THEN 'Christmas'
When title ILIKE '%Halloween%' THEN 'Halloween'
When description ILIKE '%Halloween%' THEN 'Halloween'
When title ILIKE '%Thanksgiving%' THEN 'Thanksgiving'
When description ILIKE '%Thanksgiving%' THEN 'Thanksgiving'
When title ILIKE '%Valnetine%' THEN 'Valentines Day'
When description ILIKE '%Valentine%' THEN 'Valentines Day'
When title ILIKE '%NewYears%' THEN 'New Years'
When description ILIKE '%NewYears%' THEN 'New Years'
When title ILIKE '%Veterans Day%' THEN 'New Years'
When description ILIKE '%Veterans Day%' THEN 'New Years'
Else NULL
End AS Holiday
FROM film
Group by title, description, Holiday)
SELECT * 
FROM Holidays
WHERE Holiday IS NOT NULL
ORDER BY Holiday
Limit 20;