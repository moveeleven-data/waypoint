# Process

**Goal:** simulate an AE workflow. Start from the report, ship weekly, keep change controlled.

## Working model

Planning: 1 week sprints in Jira, stories follow S1..S5

Gates: dbt contracts and tests, anomaly checks, data-diff on last 7 days before publish

Change control: short ADRs, small change requests with a deprecation note

DoD: contract and tests, runbook link, lineage visible, acceptance check recorded

## Timeline

Week 1: S1 mart blueprint, S2 reference sketch, staging and freshness SLOs

Week 2: identity SCD2, support ticket daily fact

Week 3: usage health features, scoring, anomaly checks, data-diff gate

Week 4: final report, exposures, runbooks, optional Airflow job

## What to review
- Blueprints: ./project/blueprints
- ADRs: ./project/adrs
- Runbooks: ./project/runbooks
- Acceptance: ./project/qa/acceptance
- Diffs and releases: ./project/qa/data-diff and Releases tab
