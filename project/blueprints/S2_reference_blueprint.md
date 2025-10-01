# S2 Refined Layer blueprint

**Identity**
- map_source_to_customer: hubspot_company_id, stripe_customer_id, zendesk_org_id, app_account_id
- Survivorship: domain and name, Stripe metadata, Zendesk domain

**SCD2**
- dim_customer with valid_from, valid_to, is_current

**Facts**
- fact_support_ticket_daily: ticket_id x report_date with response time, resolution time, SLA flags
- fact_usage_health_daily: customer x product x report_date with rolling features
