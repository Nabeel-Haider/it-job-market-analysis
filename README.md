# IT Job Market & Skills Analysis

A normalized relational database and analytical query layer built to help 
college students and early-career job seekers navigate the IT job market — 
surfacing trends in in-demand skills, compensation, and workplace preferences 
across job postings.

**Team project (Group 4, INST 327) — May 2024**


**My contribution:** data cleaning (Python/pandas) and all 5 SQL analytical views.

## Overview

Sourced from a public dataset of Polish IT job postings, the database was 
scoped and cleaned specifically for a college-student audience — filtering 
out senior-level-skewed data and irrelevant columns to keep the dataset 
relevant to early-career job seekers.

## My Work

### Data Cleaning (Python/pandas)
- Used regex to split the raw `Published_at` timestamp into separate date 
  and time columns
- Reformatted multi-type salary data into consistent `salary_start` / 
  `salary_end` / `salary_type` fields, filtering to postings with a single 
  salary type for consistency
- Dropped irrelevant/redundant columns and reduced the dataset to a clean 
  150-row sample for import

### SQL Views
Built 5 analytical views on a normalized 10-table schema:

| View | Purpose |
|---|---|
| `locations_offering_most_jobs` | Ranks locations by posting volume |
| `preferred_workplace_for_junior_roles` | Workplace type breakdown (remote/hybrid/onsite) for entry-level postings |
| `high_earning_jobs` | Flags postings with above-average salary range |
| `skills_by_experience_level` | Skill popularity segmented by experience level |
| `skill_average` | Highest-valued skills (avg. skill rating ≥ 3, appearing in 5+ postings) |
| `company_sizes` | Categorizes companies by posting volume (small/medium/large) |

Built using multi-table joins, correlated subqueries, and conditional 
aggregation (`CASE`, `HAVING`).

## Schema

10 normalized tables: `postings`, `locations`, `companies`, `skills`, 
`posting_skill`, `salaries`, `posting_salary`, `currencies`, `jobcategories`, 
`experiencelevel` — designed around `postings` as the central table, with 
reference data (experience level, currency) separated out for easy updates.

## Tech Stack

MySQL · Python (pandas) · MySQL Workbench (ERD/logical design)

## Data Source

[Polish IT Job Board Data (Kaggle)](https://www.kaggle.com/datasets/kriegsmaschine/polish-it-job-board-data-from-2022)
