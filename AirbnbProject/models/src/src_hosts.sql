with src_hosts as (
select * from {{source('raw', 'raw_hosts')}}
)

select * from src_hosts