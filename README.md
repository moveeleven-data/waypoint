<h1 align="center">Atlas Waypoint: Customer 360 & Health</h1>

<p align="center">
  Identity resolution and daily customer health scoring for Atlas, built with dbt and Snowflake.
  <br/><br/>
</p>

## Business Story

Waypoint is the **customer backbone** for Atlas, a B2B SaaS company.  

It unifies identities across CRM, billing, support, and product usage, then publishes a clear daily health score.  

The output powers the **Customer Current Position Report**:  
- **Risk watchlist** - which accounts are at risk, with transparent reasons.  
- **Expansion signals** - which accounts show overage or healthy adoption.  
- **SLA snapshot** - support responsiveness and breach rates.  

---

## Data Model

Waypoint follows a hybrid approach:  

**Reference layer**: normalized, history where needed.  

**Mart layer**: a lean star schema for BI, mostly flattened dimensions.  


Core entities include:  

- **core.map_source_to_customer** - crosswalk of source IDs.  
- **core.dim_customer** - golden customer SCD2 with current view.  
- **ref.fact_support_ticket_daily** - SLA and resolution metrics.  
- **ref.fact_usage_health_daily** - usage and overage features.  
- **marts.customer_health_daily** - one row per customer per day with score + risk band.  

![Waypoint Lineage](project/lineage/lineage_v1.png) (WIP)

---

**Current status** 

Sprint 1 in progress.

Mid-sprint snapshot: `project/sprint-summaries/sprint-01.md`.

| Process                   | Documentation                                                             |
|---------------------------|---------------------------------------------------------------------------|
| Sprint 1 Overview         | [Mid-sprint summary](project/sprint-summaries/sprint-01.md)                 |
| Sprint backlog view       | [Backlog, mid-sprint](project/sprint-summaries/sprint-01_mid_backlog.jpg) |
| Active sprint board       | [Board, mid-sprint](project/sprint-summaries/sprint-01_mid_board.jpg) |
| Release Overview - Week 1 | [Releases panel (W1)](project/assets/releases_panel_w1_2025-10-01_v1.jpg) |
| Release Overview - Week 2 | [Releases panel (W2)](project/assets/releases_panel_w2_2025-10-01_v1.jpg) |
| Release Overview - Week 3 | [Releases panel (W3)](project/assets/releases_panel_w3_2025-10-01_v1.jpg) |
| Release Overview - Week 4 | [Releases panel (W4)](project/assets/releases_panel_w4_2025-10-01_v1.jpg) |
| Automation rules          | [Snapshot](project/assets/automation_rules_2025-10-01.jpg)                |

---

## Process Documentation

Atlas Waypoint emphasizes governed, traceable workflows
.  
All process records live under [`project/`](project/).

[**PROCESS.md**](project/PROCESS.md) - week-by-week build log  
[**blueprints/**](project/blueprints/) - mart and reference designs (S1, S2)  
[**adrs/**](project/adrs/) - concise architectural decisions  
[**sprint-summaries/**](project/sprint-summaries/) - Jira boards, notes, and sprint outcomes  
[**qa/**](project/qa/) - acceptance checks and data-diff artifacts  
[**reports/**](project/reports/) - published Customer Current Position brief  
[**runbooks/**](project/runbooks/) - operational procedures for late data, backfills, and schema change  
[**assets/**](project/assets/) - screenshots and supporting artifacts  

---

## Analytics Codebase

All dbt assets and transformations are grouped under [`analytics/`](analytics/).

[**models/**](analytics/models/) - sources, staging, core, ref, marts, exposures  
[**macros/**](analytics/macros/) - reusable SQL logic  
[**tests/**](analytics/tests/) - singular and generic dbt tests  
[**seeds/**](analytics/seeds/) - static reference data  
[**snapshots/**](analytics/snapshots/) - slowly changing dimensions  
[**analyses/**](analytics/analyses/) - ad-hoc SQL for exploration  
[**selectors.yml**](analytics/selectors.yml) - model/test selector definitions  

---

## Supporting Docs

[**.github/**](.github/) - issue and PR templates enforcing consistency  
[**.pre-commit-config.yaml**](.pre-commit-config.yaml), [**.sqlfluff**](.sqlfluff) - style and linting  
[**profiles-example.yml**](profiles-example.yml) - warehouse profile

---

<p align="center">Designed and maintained by <a href="https://github.com/moveeleven-data">Matthew Tripodi</a></p>
