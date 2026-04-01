# NJ Schools Data Analysis (2024-2025)

### Approach

**Tools:** MySQL, Tableau

#### 1. Process

##### a. How did you extract the data?

I downloaded the required datasets from the provided sources, including enrollment data, Title I school lists, and the New Jersey school directory.
After reviewing the files, I standardized them into a consistent .csv format for further processing:
- Excel files were converted to .csv, selecting the relevant sheet
- Existing .csv files were used without modification
- The .pdf file was manually converted into a structured format by copying the data into Excel, cleaning it, and exporting it as .csv
Due to the relatively small size of the .pdf file, I chose manual processing instead of using automated tools such as Python libraries.
---
##### b. How did you merge the data together?

I merged the datasets using common identifiers across sources.
The enrollment data was joined with the school directory using the District Code as the primary key.
To identify Title I districts, I matched the datasets using NCES ID, which corresponds to the LEA ID in the Title I dataset.
Inner joins were applied to ensure that only records present in all relevant datasets were included in the final analysis.
---
##### c. What language did you use for the analysis?    

I used SQL (MySQL) for data cleaning, joining tables, and calculating student numbers. 
The final analysis was visualized in Tableau with interactive dashboards.
---
##### d. What challenges did you have and how did you overcome them?

One challenge was extracting data from the PDF file. I was not sure which method to use, so I chose to manually copy the data into Excel, clean it, and convert it to 
.csv since the file was small. Another challenge was identifying the correct keys to join the datasets. I needed to understand the difference between LEA ID and NCES ID, so I researched their meaning and confirmed how they match across datasets.
---
#### 2. Key Takeaways

- Title I student distribution (grades 5–8) is dominated by Bergen County, with other counties showing significantly lower values.
- The distribution of Title I students (grades 5–8) is uneven across districts, with a concentration in a limited number of schools.
---
#### 3. Links

##### a. Code 

- MySQL code #1: https://github.com/ugin-z/data-analytics-practice/blob/main/assignments/schools_new_jersey/sql/county_analysis.sql
- MySQL code #2: https://github.com/ugin-z/data-analytics-practice/blob/main/assignments/schools_new_jersey/sql/district_analysis.sql
---
##### b. Dashboards

- Dashboard #1: https://public.tableau.com/app/profile/yevhen.zinchenko/viz/analysis_nj_county_school/AnalysisbyCounty
- Dashboard #2: https://public.tableau.com/app/profile/yevhen.zinchenko/viz/analysis_nj_distr_school/AnalysisbyDistrictandSchool

    
