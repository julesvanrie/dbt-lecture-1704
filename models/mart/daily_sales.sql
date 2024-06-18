select
    date_date,
    sum(qty * price) as turnover
from
    {{ ref('int_sales_stock') }}
group by
    date_date