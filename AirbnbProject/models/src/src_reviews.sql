with src_reviews as (
select * from {{source('raw', 'raw_reviews')}}
)

select * from src_reviews