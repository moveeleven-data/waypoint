name: Story
title: "WPT-: "
labels: ["story"]
body:
- type: textarea
  attributes: { label: Problem statement }
- type: input
  attributes: { label: Model or artifact name }
- type: input
  attributes: { label: Grain promise }
- type: textarea
  attributes: { label: Acceptance criteria, description: "List checks and their SQL/test names" }
- type: textarea
  attributes: { label: Test queries }
- type: textarea
  attributes: { label: Fallout plan }
