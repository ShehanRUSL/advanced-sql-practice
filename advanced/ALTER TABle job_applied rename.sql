ALTER TABle job_applied
rename column contact to contact_name;

alter table job_applied
alter column contact_name type TExT;


alter table job_applied
drop column contact_name;

select * from job_applied;