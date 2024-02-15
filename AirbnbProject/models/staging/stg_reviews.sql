-- LISTING_ID, DATE, REVIEWER_NAME, COMMENTS, SENTIMENT

with stg_reviews as (

    select 
        LISTING_ID,
        DATE as LISTING_DATE,
        coalesce(REVIEWER_NAME, 'anonymous') as REVIEWER_NAME,
        COMMENTS,
        SENTIMENT
    
    from {{ref("src_reviews")}}
)

select * from stg_reviews