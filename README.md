
 Candy Sales Analysis Project

A complete end-to-end data analytics project that explores candy sales transactions to uncover customer behavior, product performance, regional trends, and business opportunities.


 Project Overview

This project analyzes 10,194 candy sales transactions from multiple datasets to understand:
- Spending patterns by region, division, and product
- Top-performing products and factories
- Year-over-year growth trends
- Performance against 2024 sales targets
- Actionable business recommendations

Goal: Deliver clear, data-driven insights to support strategic decisions (e.g., marketing focus, inventory optimization).

Dataset Summary

- Total Rows**: 10,194 transactions
- Total Columns (after merging): ~28
- Source Files:
  - `Candy_Sales.csv` – Transactional data (orders, customers, sales, units, profit, cost)
  - `Candy_Products.csv` – Product catalog (division, factory, unit price, unit cost)
  - `Candy_Factories.csv` – Factory locations (latitude, longitude)
  - `Candy_Targets.csv` – 2024 sales targets by division
  - `candy_distributor_data_dictionary.csv` – Data dictionary

Key Features:
- Customer demographics (city, state, region, postal code)
- Purchase details (product, units, sales value, gross profit)
- Factory & target information

Initial Data Issues: 6 missing values in merged dataset (factory/unit price/unit cost columns) → handled by deletion.

Project Steps

1. Data Loading & Preparation (Python)
   - Loaded CSV files using `pandas`
   - Converted date columns (`Order Date`, `Ship Date`)
   - Merged Sales + Products + Factories + Targets into a master dataset

2. Data Cleaning & Transformation 
   - Removed 6 rows with missing values
   - Standardized column names to snake_case
   - Created derived columns:
     - `year` (from Order Date)
     - `profit_margin` (%) = (Gross Profit / Sales) × 100

3. Exploratory Data Analysis (EDA)
   - Summary statistics (`describe()`, value counts)
   - Grouped aggregations: sales by division, region, year, product, factory
   - Trend analysis: yearly growth, top cities/products
   - Identified: Chocolate drives ~92% of revenue, strong growth 2021–2024

4. SQL Analysis(MySQL)
   - Loaded cleaned data into MySQL tables
   - Ran business-oriented queries:
     - Total sales & profit by division/region/factory
     - 2024 actual vs target comparison
     - Top 10 products by revenue/profit
     - Regional contribution ranking

5. Power BI Dashboard
   - Connected to cleaned CSV / MySQL
   - Built interactive 3-page report:
     - **Page 1**: Overall KPIs, sales trend, division breakdown
     - **Page 2**: Regional & city-level map + bar charts
     - **Page 3**: Factory performance, product ranking, target variance
   - Used visuals: cards, line charts, bar charts, maps, slicers (year, region, division)

6. Presentation
   - Created concise slide deck using **Gamma.app**
   - Included: problem statement, methodology, key insights, visuals, recommendations

Key Results & Insights

- Chocolate division contributes ~92% of total sales with 67% average margin
- Sales grew ~62% from 2021 to 2024
- Pacific region leads revenue; Sugar division significantly under target (~99% below 2024 goal)
- Top factories: Lot's O' Nuts and Wicked Choccy's dominate output
- Highest sales cities: New York City, Los Angeles, Philadelphia
- Business Recommendations:
  - Increase marketing/promotions for Sugar products
  - Scale Chocolate production at high-performing factories
  - Target expansion in under-served regions (Interior, Gulf)

Technologies Used

- Python: pandas, numpy (data cleaning, EDA)
- SQL / MySQL: querying & aggregation
- Power BI: interactive dashboards & reporting
- Gamma.app: professional presentation slides

How to Run / Reproduce

1. Clone the repository

   git clone https://github.com/kabhisamuel/Candy-Sales-Analysis.git
   cd Candy-Sales-Analysis

2.   Install dependencies (if running Python code)Bashpip install pandas numpy sqlalchemy pymysql
3.Explore Jupyter Notebook (if included)Bashjupyter notebook "Candy Sales Analysis.ipynb"
4.View Power BI report
Open Candy_Sales_Dashboard.pbix in Power BI Desktop

5.View presentation
Open the Gamma link (or PDF export) shared in the repository


Folder Structure (suggested)
textCandy-Sales-Analysis/
├── data/
│   ├── Candy_Sales.csv
│   ├── Candy_Products.csv
│   ├── Candy_Factories.csv
│   ├── Candy_Targets.csv
│   └── candy_distributor_data_dictionary.csv
├── notebooks/
│   └── Candy_Sales_Analysis.ipynb
├── dashboard/
│   └── Candy_Sales_Dashboard.pbix
├── presentation/
│   └── Candy_Sales_Presentation_Gamma.pdf    (or link)
├── README.md
└── requirements.txt
Connect with Me

LinkedIn: Abhishek Samuel Komarabathini
Email: kabhisamuel@gmail.com
Phone: +91 63048 11363

Feel free to reach out for questions, collaboration, or opportunities!
⭐ If you find this project helpful, give it a star!
