select
    *
from
    {{ ref("stg_raw__sales") }}
join
    {{ ref("stg_raw__stock") }}
using
    (product_id)