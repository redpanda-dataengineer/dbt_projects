select 
    booking_date,
    booking_time,
    replace(nullif(booking_id,'null'), '"', '') as booking_id,
    nullif(booking_status,'null') as booking_status,
    replace(nullif(customer_id,'null'),'"', '') as customer_id,
    nullif(vechicle_type,'null') as vechicle_type,
    nullif(pickup_location,'null') as pickup_location,
    nullif(drop_location,'null') as drop_location,
    nullif(avg_vtat,'null')::float as avg_vtat,
    nullif(avg_ctat,'null')::float as avg_ctat,
    nullif(Cancelled_Rides_by_Customer,'null')::boolean as Cancelled_Rides_by_Customer,
    nullif(Reason_for_cancelling_by_Customer,'null') as Reason_for_cancelling_by_Customer,
    nullif(Cancelled_Rides_by_Driver,'null')::boolean as Cancelled_Rides_by_Driver,
    nullif(Driver_Cancellation_Reason,'null') as Driver_Cancellation_Reason,
    nullif(Incomplete_Rides,'null')::boolean as Incomplete_Rides,
    nullif(Incomplete_Rides_Reason,'null') as Incomplete_Rides_Reason,
    nullif(Booking_Value,'null')::float as Booking_Value,
    nullif(Ride_Distance,'null')::float as Ride_Distance,
    nullif(Driver_Ratings,'null')::float as Driver_Ratings,
    nullif(Customer_Rating,'null')::float as Customer_Rating,
    nullif(Payment_Method, 'null') as Payment_Method
from 
    {{source('azure','azure_ext_table')}}