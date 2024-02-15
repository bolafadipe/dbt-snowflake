with src_listings as (
select * from {{source('raw', 'raw_listings')}}
)

select * from src_listings