-- SLA breach rate aggregates must reconcile to sample
select date_trunc(day, report_date) as day, round(avg(sla_breach_flag)::numeric, 4) as breach_rate
from {{ ref("fact_support_ticket_daily") }}
group by 1
order by 1 desc
limit 14;
