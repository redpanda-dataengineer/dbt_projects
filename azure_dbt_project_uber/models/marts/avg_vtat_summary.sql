select booking_status, sum(avg_vtat) as sum_avg_vtat from {{ref('avg_vtat_not_null')}}
group by booking_status