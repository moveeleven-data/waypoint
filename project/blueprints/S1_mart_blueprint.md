# S1 Mart blueprint, Customer Current Position

**Fact grain:** customer_id by report_date  
**Dims:** dim_customer_current, dim_date  
**Fields:** health_score, risk_band, usage_trend_28d, overage_ratio_28d, sla_breach_rate_14d, open_critical_tickets_7d, is_delinquent  
**Scoring:** transparent weighted penalties; bounded [0, 100]

**Acceptance targets**
- One row per customer per day
- Scores in [0, 100]
- Top 10 high risk have concrete reasons
