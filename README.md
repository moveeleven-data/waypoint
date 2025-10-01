<h1 align="center">Atlas Waypoint: Customer 360 & Health</h1>

<p align="center">
  Identity resolution and daily customer health scoring for Atlas, built with dbt + Snowflake.
  <br/><br/>
</p>

## Business Story

Waypoint is the **customer backbone** for Atlas, a B2B SaaS company.  

It unifies identities across CRM, billing, support, and product usage, then publishes a clear daily health score.  

The output powers the **Customer Current Position Report**:  
- **Risk watchlist** – which accounts are at risk, with transparent reasons.  
- **Expansion signals** – which accounts show overage or healthy adoption.  
- **SLA snapshot** – support responsiveness and breach rates.  

---

## Data Model

Waypoint follows a hybrid approach:  

**Reference layer**: normalized, history where needed.  

**Mart layer**: a lean star schema for BI, mostly flattened dimensions.  


Core entities include:  
- **core.map_source_to_customer** – crosswalk of source IDs.  
- **core.dim_customer** – golden customer SCD2 with current view.  
- **ref.fact_support_ticket_daily** – SLA and resolution metrics.  
- **ref.fact_usage_health_daily** – usage and overage features.  
- **marts.customer_health_daily** – one row per customer per day with score + risk band.  

![Waypoint Lineage](project/lineage/lineage_v1.png)

---

## Process Documentation

Atlas Waypoint emphasizes **governed, traceable workflows** as much as data modeling.  
All process records live under `project/`.

**PROCESS.md** - week-by-week build log  
**blueprints/** - mart and reference designs (S1, S2)  
**adrs/** - concise architectural decisions  
**sprint-summaries/** - Jira boards, notes, and sprint outcomes  
**qa/** - acceptance checks and data-diff artifacts  
**reports/** - published Customer Current Position brief  
**runbooks/** - operational procedures for late data, backfills, and schema change  
**assets/** - screenshots and supporting artifacts  

---

## Analytics Codebase

All dbt assets and transformations are grouped under `analytics/`.

**models/** - sources, staging, core, ref, marts, exposures  
**macros/** - reusable SQL logic  
**tests/** - singular and generic dbt tests  
**seeds/** - static reference data  
**snapshots/** - slowly changing dimensions  
**analyses/** - ad-hoc SQL for exploration  
**selectors.yml** - model/test selector definitions  

---

## Supporting Infrastructure

**.github/** - issue and PR templates enforcing consistency  
**.pre-commit-config.yaml**, **.sqlfluff** - style and linting  
**profiles-example.yml** - warehouse profile

---

<p align="center">Designed and maintained by <a href="https://github.com/moveeleven-data">Matthew Tripodi</a></p>
