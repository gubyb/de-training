-- SWAP THE CATALOG FOR THE ONE YOU CREATED IN THE "Pulse Data Transformation Notebook"
Create
or replace table most_favoured_city as
select
  city,
  avg(rating) as average_rating
from
  odl_instructor_731264_training.silver.transformed_pulse_data -- HERE
group by
  city
order by
  average_rating desc;