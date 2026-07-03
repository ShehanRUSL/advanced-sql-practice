CREATE Table job_applied(
    job_id int,
    application_sent_date date,
    custom_resume boolean,
    resume_file_name varchar(255),
    cover_letter_sent varchar(255),
    cover_letter_file_name varchar(255),
    status varchar(50)


);

select * from job_applied ;

