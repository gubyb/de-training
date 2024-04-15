-- SWAP THE CATALOG FOR THE ONE YOU CREATED IN THE "Pulse Data Transformation Notebook"
Create
or replace table role_city_mapping as
select
  job_role,
  city,
  count(1) as vote_count
from
  odl_instructor_731264_training.silver.transformed_pulse_data -- HERE
group by
  job_role,
  city
order by
  vote_count desc;