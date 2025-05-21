📊 Exploring Crime in Relation to Income and Population in London (2016–2019) using ETL Process

This project investigates the relationship between crime rates, population density, and income across various boroughs in London using data from 2016 to 2019. The objective is to identify patterns that can inform more effective crime prevention strategies and public safety policies.

## 📌 Project Overview

London, a highly populated and diverse city, experiences varying crime levels across neighborhoods. By integrating multiple datasets (crime reports, population stats, and income levels), this project aims to:

- Analyze spatial and temporal crime trends
- Understand the impact of population density and income on crime
- Recommend data-driven policy interventions

## 🧰 Tech Stack

- **R / RStudio** – Data cleaning, transformation, and manipulation  
- **Hadoop / Hive** – Data warehousing, schema design, ETL process  
- **Tableau** – Data visualization and interactive dashboards

## 🗃️ Datasets Used

1. **London Crime Data (2016–2019)**
2. **Population Density Data**
3. **Earnings / Income Data**

### Dataset Highlights:
- Over 4 million crime observations
- Linked using MSOA (Middle Layer Super Output Area)
- Aggregated by borough, subregion, time, and crime type

## 🧱 Project Methodology

- **ETL Process**: Extract → Transform → Load using R and Hive
- **Schema Design**: Star and Fact Constellation schemas
- **Dimensional Modeling**: Crime, Income, Location, Time, Population
- **Data Validation**: Missing values, duplicates, consistency checks

### Schema Diagram:
- **Fact Table**: Links dimension tables and stores metrics like crime count, population, and total income
- **Dimension Tables**: Time, Location, Crime, Population, Income

## 📈 Business Questions Answered

1. **Trends in crime, population, and income** across boroughs (2016–2019)
2. **Top crime types** in the 10 most populated boroughs
3. **Quarterly crime patterns** across London
4. **Monthly investigation outcomes** by crime type
5. **Top subregions with highest crime rate** in 2019 needing urgent intervention

## 📊 Key Visual Insights

- Crime is closely tied to population density and socio-economic status
- Theft, violence, and sexual offences are the most common crime types
- Westminster consistently reports the highest crime count
- Some boroughs with high income also have high crime (e.g., Westminster), indicating complex dynamics

## ✅ Recommendations

- Increase surveillance and preventive infrastructure in high-risk subregions
- Focus on socio-economic interventions in areas with social-driven crimes
- Continue to update and integrate datasets for real-time insights
- Design localized security strategies using subregional crime trends

## 📚 References

- Andresen, Malleson & Kinney (2015), Clarke & Eck (2014), Ratcliffe & McCullagh (1998), Shaw et al. (2016)
- Official UK Open Government Data Portals


## 📂 Repository Structure

/data # Raw and cleaned datasets
/scripts # ETL, transformation, and modeling code (R)
/hive # Hive schema and table creation scripts
/tableau # Tableau workbook and dashboards
/docs # Presentation and project report
