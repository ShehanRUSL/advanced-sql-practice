SELECT 

count(job_id) as job_posted_count,
extract(month from job_posted_date) as month

from
job_postings_fact

where job_title_short = 'Data Analyst'

group by month

order BY
job_posted_count desc;