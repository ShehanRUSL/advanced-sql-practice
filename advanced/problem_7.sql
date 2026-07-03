     
with remote_job_skills as (  
     
        select 
        skill_id,
        count(*) as skills_count

        from skills_job_dim as skills_to_job

        inner join job_postings_fact as job_postings
        on job_postings.job_id = skills_to_job.job_id

        where job_postings.job_work_from_home = True

        group by  skill_id
)

select skills.skill_id,
skills as skill_name,
skills_count
from remote_job_skills
inner JOIN skills_dim as skills
on skills.skill_id = remote_job_skills.skill_id         