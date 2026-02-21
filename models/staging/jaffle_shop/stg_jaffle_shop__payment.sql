with 
source as (

    select * from {{ source('jaffle_shop', 'payment') }}

),

renamed as (

    select
        id as customer_id,
        orderid as order_id,
        paymentmethod,
        status,
        amount,
        created,
        _batched_at

    from source
)

select * from renamed