USE it_postings;
DROP VIEW IF EXISTS locations_offering_most_jobs;

CREATE VIEW locations_offering_most_jobs AS
    SELECT 
        CONCAT(locations.city,
                ', ',
                locations.country_code) AS 'Location',
        COUNT(postings.posting_id) AS 'Number of Postings'
    FROM
        locations
            JOIN
        postings ON locations.location_id = postings.location_id
    GROUP BY Location
    ORDER BY COUNT(postings.posting_id) DESC;

USE it_postings;
DROP VIEW IF EXISTS preferred_workplace_for_junior_roles;
CREATE VIEW preferred_workplace_for_junior_roles AS
    SELECT 
        jobcategories.category_type AS 'Workplace Type',
        COUNT(postings.posting_id) AS 'Postings'
    FROM
        (SELECT 
            posting_id
        FROM
            postings
        WHERE
            level_id = 3) AS junior_postings
            JOIN
        postings ON junior_postings.posting_id = postings.posting_id
            JOIN
        jobcategories ON postings.category_id = jobcategories.category_id
    GROUP BY jobcategories.category_type
    ORDER BY Postings DESC;

USE it_postings;
DROP VIEW IF EXISTS high_earning_jobs;
CREATE VIEW high_earning_jobs AS
    SELECT 
        posting_title,
        experience_level,
        (salary_end - salary_start) AS median_salary,
        salary_type
    FROM
        experiencelevel
            JOIN
        postings USING (level_id)
            JOIN
        posting_salary USING (posting_id)
            JOIN
        salaries USING (salary_id)
    WHERE
        (salary_end - salary_start) > (SELECT 
                AVG(salary_end - salary_start)
            FROM
                posting_salary)
    ORDER BY experience_level DESC , median_salary DESC;

DROP VIEW IF EXISTS skills_by_experience_level;

CREATE VIEW skills_by_experience_level AS
    SELECT 
        skills.skill_name AS 'Skill Name',
        experiencelevel.experience_level AS 'Level of Experience',
        COUNT(postings.posting_id) AS Popularity
    FROM
        postings
            JOIN
        posting_skill ON postings.posting_id = posting_skill.posting_id
            JOIN
        skills ON posting_skill.skill_id = skills.skill_id
            JOIN
        experiencelevel ON postings.level_id = experiencelevel.level_id
    GROUP BY skills.skill_name , experiencelevel.experience_level
    HAVING Popularity > 2
    ORDER BY Popularity DESC;

USE it_postings;

DROP VIEW IF EXISTS skill_average;

CREATE VIEW skill_average AS
    SELECT 
        skill_name, AVG(skill_value) AS average_value
    FROM
        skills
            INNER JOIN
        posting_skill ON skills.skill_id = posting_skill.skill_id
    GROUP BY skill_name
    HAVING average_value >= 3
        AND COUNT(posting_skill.posting_id) >= 5
    ORDER BY average_value DESC;

USE it_postings;

DROP VIEW IF EXISTS company_sizes;

CREATE VIEW company_sizes AS
    SELECT 
        postings.company_id,
        COUNT(postings.company_id) AS 'Number of Postings',
        CASE
            WHEN (companies.company_size_end - companies.company_size_start) <= 10 THEN 'Small Company'
            WHEN (companies.company_size_end - companies.company_size_start) <= 50 THEN 'Medium Company'
            ELSE 'Large Company'
        END AS 'Company Size'
    FROM
        postings
            JOIN
        companies USING (company_id)
    GROUP BY postings.company_id;



