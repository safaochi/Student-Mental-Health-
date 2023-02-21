Select 
Case when "Your current year of Study"='year 1' then  count("Your current year of Study") else null end as students_year1 ,
Case when "Your current year of Study"='year 2' then  count("Your current year of Study") else null end as students_year2,
Case when "Your current year of Study"='Year 3' then  count("Your current year of Study") else null end as students_year3
from "Student Mental health" as smh
where "Choose your gender" = 'Female' and  "Do you have Depression?" = 'Yes'
group by "Your current year of Study"

-- Female Students of year1 seems to be more unstable in mental health then other the students of year 2 and 3

select 
Max(Age),
Count(Age)
from "Student Mental health" as smh
where "Do you have Depression?" = 'Yes' 
Group by Age 

-- The Age range that have the most unstabled mental health are in 18th which is a very young age 


Select 
"Choose your gender" ,
Case when "Marital status" ='Yes' then count ("Marital status") else count ("Marital status") end as Status
from "Student Mental health" as smh
where "Do you have Depression?" = 'Yes' 
group by 1,2

-- The number of female students who are married are likely to be unstable then males 
