# ADR-001 Grain and naming

**Context**
Customer Current Position requires a daily view by customer with clear lineage and tests.

**Decision**
Mart fact grain is customer_id by report_date. Dimensions use dim_* naming, facts use fact_*. SCD2 tables use valid_from, valid_to, is_current.

**Consequences**
Simple joins in BI, stable keys, and clean acceptance checks. History is auditable.
