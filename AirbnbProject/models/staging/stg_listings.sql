
-- ID, LISTING_URL, NAME, ROOM_TYPE, MINIMUM_NIGHTS, HOST_ID, PRICE, CREATED_AT, UPDATED_AT
with stg_listings as (

    select 
        ID as APARTMENT_ID,
        NAME as APARTMENT_DESCRIPTION,
        ROOM_TYPE,
        case
            when MINIMUM_NIGHTS = 0 then 1
            else MINIMUM_NIGHTS
        end as MINIMUM_NIGHTS,
        HOST_ID,
        cast(replace(PRICE, '$', '') as number) as PRICE_PER_NIGHT,
        CREATED_AT,
        UPDATED_AT
    from {{ref("src_listings")}}
)

select * from stg_listings