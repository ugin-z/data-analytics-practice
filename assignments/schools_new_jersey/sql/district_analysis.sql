WITH r AS (
	SELECT
		t.`District Name` AS district_name,
		t.`School Name` AS school_name,
		(t.`Fifth Grade` + t.`Sixth Grade` + t.`Seventh Grade` + t.`Eighth Grade`) AS num_of_students
	FROM enrollment_2425 t
	JOIN (SELECT DISTINCT `District Code`, `NCES ID` FROM school_districts) e
		ON t.`District Code` = e.`District Code`
	JOIN (SELECT DISTINCT lea_id FROM lea_id) w
		ON e.`NCES ID` = w.lea_id
)
SELECT
	district_name,
	school_name,
	num_of_students,
	DENSE_RANK() OVER (PARTITION BY district_name ORDER BY num_of_students DESC) AS school_rank
FROM r
ORDER BY district_name, school_rank, school_name;