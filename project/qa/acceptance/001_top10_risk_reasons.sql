-- Top 10 high risk customers must have concrete reasons
select customer_golden_id, report_date, risk_band, reason_count
from {{ ref("customer_health_daily") }}
where risk_band = ''high''
order by report_date desc, reason_count desc
limit 10;
