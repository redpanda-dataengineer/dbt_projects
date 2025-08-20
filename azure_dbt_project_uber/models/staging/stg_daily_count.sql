select 
    booking_date,
    count(booking_id) as booking_count
from 
    {{source('azure','stg_azure_data')}}
group by
    1