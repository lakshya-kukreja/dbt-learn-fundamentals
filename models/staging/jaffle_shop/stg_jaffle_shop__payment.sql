with 
source as (

    select * from {{ source('jaffle_shop', 'payment') }}

),

renamed as (

    select
        id as customer_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount / 100 as amount,
        created as created_at,
        _batched_at

    from source
)

select * from renamed