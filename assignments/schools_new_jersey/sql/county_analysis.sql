WITH r AS (
	SELECT
		t.`County Name` AS county_name,
		SUM(t.`Fifth Grade` + t.`Sixth Grade` + t.`Seventh Grade` + t.`Eighth Grade`) AS num_of_students
	FROM enrollment_2425 t
	JOIN (SELECT DISTINCT `District Code`, `NCES ID` FROM school_districts) e
		ON t.`District Code` = e.`District Code`
	JOIN (SELECT DISTINCT lea_id FROM lea_id) w
		ON e.`NCES ID` = w.lea_id
	GROUP BY county_name
)
SELECT
	county_name,
	num_of_students,
	ROW_NUMBER() OVER (ORDER BY num_of_students DESC) AS county_rank
FROM r
ORDER BY county_rank;