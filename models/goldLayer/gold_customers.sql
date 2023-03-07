with source as(select * from {{ ref('silver_customers') }}),
renamed as (

    select
        customer_id ,
        first_name,
        first_order,
        most_recent_order,
        number_of_orders,
        customer_lifetime_value
    from source
    )

select * from renamed
