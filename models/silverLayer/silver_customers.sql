with source as(select * from {{ ref('customers') }}),
renamed as (

    select
        customer_id ,
        coalesce(first_name, "empty_val") as first_name,
        coalesce(first_order, "empty_val") as first_order,
        coalesce(most_recent_order, "empty_val") as most_recent_order,
        coalesce(number_of_orders, "empty_val") as number_of_orders,
        customer_lifetime_value
    from source
    )

select * from renamed
where first_order != "empty_val"