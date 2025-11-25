# Customer Shopping Behavior Analytics with dbt & Snowflake

## 📌 Overview
This project builds a complete analytics pipeline using **dbt (Data Build Tool)** on top of **Snowflake** to analyze customer shopping behavior data. The dataset contains transactional shopping records, including demographics, purchase details, preferences, and seasonal buying patterns.

The goal is to transform raw data into meaningful insights to answer nine business questions, covering customer segmentation, spending behavior, product trends, and revenue analysis.

## 📂 Dataset
The project uses the **Customer Shopping Behavior Dataset** from Kaggle:
[Customer Shopping Behavior Dataset](https://www.kaggle.com/datasets/ayeshasiddiqa123/customer-shopping-behavior-dataset/data)

It includes information such as:
- Customer Demographics (Age, Gender, Location)
- Purchase Details (Item, Category, Amount, Size, Color)
- Seasonal Trends & Ratings

## 🛠 Tech Stack
- **dbt Core**: For data transformation, testing, and documentation.
- **Snowflake**: As the cloud data warehouse.
- **SQL**: For defining transformation logic.

## 🏗 Project Structure
The project follows a standard dbt structure:
- `models/staging`: Raw data cleaning and standardization.
- `models/marts/analytics`: Business logic and final analytical tables.
- `macros`: Reusable SQL snippets.
- `tests`: Data integrity checks.

## 🚀 Setup Instructions

### Prerequisites
1.  **Python** installed.
2.  **dbt-snowflake** adapter installed (`pip install dbt-snowflake`).
3.  A **Snowflake** account.

### Installation
1.  Clone the repository:
    ```bash
    git clone <repo-url>
    cd Customer-Shopping-Behavior-dbt
    ```
2.  Configure your `profiles.yml` (usually in `~/.dbt/`) to connect to your Snowflake instance.
3.  Install dependencies:
    ```bash
    dbt deps
    ```
4.  Seed the data (if applicable) or ensure raw data is loaded in Snowflake.
5.  Run the models:
    ```bash
    dbt run
    ```
6.  Run tests:
    ```bash
    dbt test
    ```
7.  Generate documentation:
    ```bash
    dbt docs generate
    dbt docs serve
    ```

## 📊 Business Questions & Models
The project answers the following 9 business questions. Each result is materialized as a table in Snowflake.

| # | Question | Model Name |
|---|----------|------------|
| 1 | What is the total number of records in the dataset? | `q1_total_records` |
| 2 | How many unique customers are there? | `q2_unique_customers` |
| 3 | What percentage of values are missing in each column? | `q3_missing_values_pct` |
| 4 | Which age group makes the highest number of purchases? | `q4_purchases_by_age_group` |
| 5 | Which locations have the highest number of unique customers? | `q5_unique_customers_by_location` |
| 6 | Find the average purchase amount by category. | `q6_avg_purchase_by_category` |
| 7 | Calculate total purchases per season sorted by highest revenue. | `q7_total_purchases_by_season` |
| 8 | Retrieve the top 10 customers with the highest total spending. | `q8_top10_customers_by_spending` |
| 9 | Comprehensive analysis (Age, Gender, Category, Season stats). | `q9_full_insights` |

## 🧩 Key Features
- **Macros**: Used for repeated logic to improve code reusability.
- **Materialization**: All analytical models are materialized as `table` for performance and persistence.
- **Documentation**: All models are documented in `schema.yml` files.
