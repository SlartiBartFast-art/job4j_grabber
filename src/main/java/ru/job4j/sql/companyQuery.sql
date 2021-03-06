/* 1. В одном запросе получить:
- имена всех person, которые не состоят в компании с id = 5;
- название компании для каждого человека.*/
/*select s.name, ss.name from person as s join company as ss on s.company_id = ss.id
where not company_id in (5);*/
/* 2.Необходимо выбрать название компании с максимальным количеством человек + количество человек в этой компании.*/

SELECT c.name, COUNT(*) people
FROM company c, person p
WHERE c.id = p.company_id
GROUP BY c.name
ORDER BY 2 DESC LIMIT 1