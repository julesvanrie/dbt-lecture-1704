select
    model,
    model_name,
    sum(stock) as stock,
    sum(stock * price) as stock_value

from
    {{ ref("stg_raw__stock") }}

group by
    model,
    model_name