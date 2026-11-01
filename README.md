# HealthConnect Rwanda — Week 7

**AnalystLab Africa Experience Lab | Data Analytics Track**

## Project Overview

Week 7 builds on the Week 6 healthcare analytics project through testing, validation and refinement.

The work focused on checking calculations, comparing dashboard results with source data, investigating inconsistent outputs, improving visualizations and documenting the results.

The agreed analytical review and all five follow-up Power BI check groups are complete.

## Tools Used

- MySQL / MySQL Workbench — SQL analysis.
- Power BI — dashboards, DAX measures and visual interactions.
- Python and SQLite — independent verification against the original CSV datasets.

The SQL implementation remains MySQL. Source verification used SQLite with documented function and column-name mappings. Native MySQL and Power BI execution were not performed by the assistant.

## Repository Contents

### Documentation Package

`HealthConnect_Week7_Documentation.zip` contains:

- Analytics Testing and Refinement Report.
- Week 7 Project Summary.
- Detailed Testing Record.
- Source verification results.
- SQL query execution results.
- Project-guide coverage and work-plan records.
- Financial dashboard screenshots.
- Power BI check results.
- Reviewed DAX measure definitions.
- Supporting SQL script.
- Package README.

Download and extract the ZIP to access the individual documents and evidence files.

### Power BI Dashboard

The corrected Power BI `.pbix` file should accompany the documentation package as a separate upload. The ZIP does not contain the updated dashboard file.

## Testing Completed

- Reviewed the existing Week 6 SQL analysis and Power BI dashboard.
- Executed 39 implemented SQL SELECT statements against the source CSV data.
- Compared important totals and selected financial breakdowns.
- Investigated missing appointment links and unknown attribution.
- Reviewed six supplied DAX definitions, including their base measures.
- Checked financial slicer response and restoration after clearing.
- Checked patient-chart interactions and selection clearing.
- Confirmed chronological ordering of feedback months.
- Documented refinements, results, limitations and recommendations.

The SQL script contains 40 numbered analysis questions. Question 33 documents why service-level revenue cannot be calculated from the available relationships.

## Main Validation Results

| Measure | Result |
|---|---:|
| Registered patients | 20,000 |
| Available appointment records | 5,000 |
| Doctors | 350 |
| Total billed | 9,309,401,961 |
| Collected payments | 8,389,454,556 |
| Outstanding billing balance | 919,947,405 |
| Reported monthly revenue | 1,132,677,500 |
| Average patient satisfaction | 2.99 / 5 |

Monetary amounts are treated as RWF based on the country master. The transaction files do not contain explicit currency fields.

## Power BI Validation

All five agreed follow-up check groups were completed:

| Check Group | Evidence |
|---|---|
| Exact collected-revenue total | Screenshot showing 8,389,454,556 |
| Sampled financial groups and financial filtering | User-confirmed comparisons, slicer response and clearing |
| Measure definitions | Review of six supplied DAX definitions |
| Feedback month order | User confirmation of January–December ordering |
| Patient-selection clearing | User confirmation that original charts were restored |

The evidence distinguishes source calculations, observed screenshots, reviewed measure definitions and user-confirmed application checks.

## Refinements and Findings

- Corrected financial charts that previously repeated the same total across facilities and departments.
- Retained the Blank or Unknown group for payments without an available appointment parent.
- Kept reported monthly revenue separate from collected payments.
- Clarified the feedback chart and arranged its months chronologically.
- Distinguished recorded bed-status occupancy from utilization over time.
- Updated business insights and recommendations to reflect the available data.

## Data Limitations

- Many billing and feedback records reference appointments absent from the supplied Appointments table.
- Billing, payment and claim records lack transaction and status-effective dates.
- Expense data are unavailable, so the outstanding balance does not establish a financial loss.
- Facility and department feedback comparisons cover only linked responses.
- Feedback has no response date or formal complaint indicator.
- All 2,000 beds are marked Available in a status snapshot.
- Equipment usage history and an attendance/no-show target are unavailable.
- Some recorded facility assignments conflict with department-master associations.

Original source files were preserved. Records were joined by IDs, unmatched records were retained and repeated names were not treated as proof of identity.

## Recommendations

- Address missing appointment parent records.
- Establish consistent facility and department mappings.
- Capture transaction dates and status-effective dates.
- Collect dated bed-allocation and equipment-usage history.
- Display response counts alongside satisfaction comparisons.
- Retain unknown categories and state the population behind each analysis.
- Use the documented findings to prepare for Week 8 integration.
