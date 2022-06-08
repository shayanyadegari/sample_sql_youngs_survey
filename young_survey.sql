-- resource available at: https://data.world/jerrys/sql-project/workspace/file?filename=young_people_survey_responses.csv





--create table and import data from csv file

CREATE TABLE Young_Survey(
	Music int,
	Dance int,
	Pop int,
	Rock int,
	Latino int,
	Opera int,
	Movies int,
	Horror int,
	Comedy int,
	Psychology int,
	Politics int,
	Mathematics int,
	Physics int,
	Internet int,
	PC int,
	Biology int,
	Chemistry int,
	Reading int,
	Geography int,
	Medicine int
	
	
);




SELECT * FROM young_survey






--simple scripts
select count(music) as music
from young_survey
where music > 4

select count(movies) as movie
from young_survey
where movies > 4

select count(Mathematics) as movie
from young_survey
where Mathematics > 4

SELECT AVG(Mathematics) AS Mathematics, AVG(movies) AS movies, AVG(music) AS music
FROM young_survey


-- shows that youngs are more interested in music rather than of movies 
-- mathematic rate is too low that is dangerous for young generation



-- for more detail info here we calculated average groups for each group









--user define function sample to calculate the interest rate in each columns


CREATE OR REPLACE FUNCTION total_courses(
	test varchar(20)
)
RETURNS TABLE(
mus BIGINT
) 
LANGUAGE plpgsql
AS $$

BEGIN
RETURN QUERY
	SELECT COUNT(test) FROM young_survey
	GROUP BY young_survey.music;

END ;$$
---
-- test query
select * from total_courses('dance');
---------------











