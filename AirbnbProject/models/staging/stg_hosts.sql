
-- ID, NAME, IS_SUPERHOST, CREATED_AT, UPDATED_AT
with stg_hosts as (

    select 
        ID as HOSTS_ID,
        coalesce(NAME, 'anonymous') as HOSTS_NAME,
        case
            when IS_SUPERHOST = 't' then 'Yes'
            else 'No'
        end as IS_SUPERHOST,
        CREATED_AT,
        UPDATED_AT
    from {{ref("src_hosts")}}
)

select * from stg_hosts