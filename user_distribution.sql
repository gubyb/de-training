-- SWAP THE CATALOG FOR THE ONE YOU CREATED IN THE "Pulse Data Transformation Notebook"
Create
or replace table user_distribution as
select
  job_role,
  count(1) as headcount
from
  odl_instructor_731264_training.silver.transformed_pulse_data -- HERE
group by
  job_role
order by
  headcount desc;