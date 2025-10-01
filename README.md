# Atlas Waypoint

1) [PROCESS.md](./PROCESS.md) for how I worked, week by week  
2) [project/sprint-summaries](./project/sprint-summaries) for Jira screenshots and notes  
3) [project/reports/customer_current_position.pdf](./project/reports/customer_current_position.pdf) for the finished brief  
4) [project/adrs](./project/adrs) for decisions and tradeoffs  
5) dbt docs link (added after first docs build)

**Outcomes:** golden customer SCD2, simple star mart for health, freshness and drift checks, weekly Customer Current Position report  
**Process:** report first, light mart blueprint, light reference blueprint, build in thin vertical slices, test and diff before publish

## Evidence index
| Area | Link |
|---|---|
| Blueprints | ./project/blueprints |
| Decisions | ./project/adrs |
| Runbooks | ./project/runbooks |
| Acceptance checks | ./project/qa/acceptance |
| Data diffs | ./project/qa/data-diff |
| Sprint summaries | ./project/sprint-summaries |

## Quality scoreboard
- dbt models: 0
- dbt tests: 0
- Freshness SLO: n/a
- Anomaly alerts last 7 days: n/a
- Data-diff gate: n/a
