--https://stepik.org/lesson/310418/step/7?unit=292724
SELECT name_enrollee, IF(SUM(bonus) is Null, 0, SUM(bonus)) as 'Бонус'
FROM enrollee
LEFT JOIN enrollee_achievement USING (enrollee_id)
LEFT JOIN achievement USING (achievement_id)
GROUP BY name_enrollee
ORDER BY name_enrollee