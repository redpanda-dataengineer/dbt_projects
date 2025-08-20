select 
    c.*,
    a.booking_amount
from 
    {{ref('stg_daily_count')}} as c
join {{ref('stg_daily_booking_amount')}} as a 
    on c.booking_date = a.booking_date