select 
    booking_date, 
    sum(booking_value) as booking_amount
from {{source('azure','stg_azure_data')}}
group by 1