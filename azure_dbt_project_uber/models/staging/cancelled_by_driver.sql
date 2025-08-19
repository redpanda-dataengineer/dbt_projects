select * from {{source('azure','azure_raw_data')}}
where booking_status = 'Cancelled by Driver'