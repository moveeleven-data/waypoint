# Runbook: pipeline late

**Symptom** delayed or missing mart refresh  
**Checks** source freshness, last successful dbt run, failing tests  
**Triage** rerun state:modified, inspect logs, re-seed if local  
**Backfill** run with backfill window params  
**Rollback** revert to last published version  
**Comms** record incident note in sprint summary
