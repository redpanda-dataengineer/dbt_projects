select * from {{source('azure','azure_raw_data')}}
where avg_vtat is not null