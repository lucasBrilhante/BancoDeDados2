SELECT *
FROM (SELECT a.first_name,a.last_name,count(*) AS count
FROM film_actor fa,
actor a
WHERE fa.actor_id = a.actor_id
GROUP BY a.first_name,a.last_name) a
WHERE a.count > 4
ORDER BY a.count desc