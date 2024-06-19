select
    {{ yearmonth('date_date') }} as month,
    sum(qty * price) as turnover
from
    {{ ref('int_sales_stock') }}

group by
    {{ yearmonth('date_date') }}