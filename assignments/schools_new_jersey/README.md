# NJ Schools Data Analysis (2024-2025)

## School Assignment

Use the 3 data sources below to produce an analysis and a visualization, ranking:

- The New Jersey Counties by number of students between 5–8 grade from Title 1 schools.
- Within each Title 1 School District, the individual schools by number of students in grade 5–8

## Sources:

- Directory of Schools: https://homeroom6.doe.state.nj.us/directory/
- Title 1 Schools: https://www.ed.gov/media/document/newjerseypdf-40553.pdf
- 2024/2025 Enrollment Data: https://www.nj.gov/education/doedata/enr/

---

## Deliverables

1. Briefly (1 page) describe the process you used to produce this analysis:

a. How did you extract the data?
b. How did you merge the data together?
c. What language did you use for the analysis?
d. What challenges did you have and how did you overcome them?

2. What are two key takeaways of your analysis that might be important for an organization like JerseySTEM?

3. Provide links to:

a. Your code (SQL, Python, ..... not Excel/Vlookup/...)
b. Your visualization

----

## Approach

**Tools:** MySQL, Tableau

### 1. Process
#### a.  I downloaded the required datasets from the provided sources, including enrollment data, Title I school lists, and the New Jersey school directory.
After reviewing the files, I standardized them into a consistent .csv format for further processing:
- Excel files were converted to .csv, selecting the relevant sheet
- Existing .csv files were used without modification
- The .pdf file was manually converted into a structured format by copying the data into Excel, cleaning it, and exporting it as .csv
Due to the relatively small size of the .pdf file, I chose manual processing instead of using automated tools such as Python libraries.

#### b.  I merged the datasets using common identifiers across sources.
The enrollment data was joined with the school directory using the District Code as the primary key.
To identify Title I districts, I matched the datasets using NCES ID, which corresponds to the LEA ID in the Title I dataset.
Inner joins were applied to ensure that only records present in all relevant datasets were included in the final analysis.

#### c.  I used SQL (MySQL) for data cleaning, joining tables, and calculating student numbers. 
The final analysis was visualized in Tableau with interactive dashboards.

#### d.  One challenge was extracting data from the PDF file. I was not sure which method to use, so I chose to manually copy the data into Excel, clean it, and convert it to 
.csv since the file was small.
Another challenge was identifying the correct keys to join the datasets. I needed to understand the difference between LEA ID and NCES ID, so I researched their meaning and confirmed how they           match across datasets.

### 2. Key Takeaways
- Title I student distribution (grades 5–8) is dominated by Bergen County, with other counties showing significantly lower values.
- The distribution of Title I students (grades 5–8) is uneven across districts, with a concentration in a limited number of schools.

### 3. Links
- MySQL code #1: https://github.com/ugin-z/data-analytics-practice/blob/main/assignments/schools_new_jersey/sql/county_analysis.sql
- MySQL code #2: https://github.com/ugin-z/data-analytics-practice/blob/main/assignments/schools_new_jersey/sql/district_analysis.sql

#### b. Dashboards 
- Dashboard #1: https://public.tableau.com/app/profile/yevhen.zinchenko/viz/analysis_nj_county_school/AnalysisbyCounty
- Dashboard #2: https://public.tableau.com/app/profile/yevhen.zinchenko/viz/analysis_nj_distr_school/AnalysisbyDistrictandSchool

    
