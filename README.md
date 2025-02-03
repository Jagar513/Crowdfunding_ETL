# Crowdfunding_ETL
Group 2: Jitesh Makan, Bansri Patel, David Williams and James Garcia

## Overview
For this mini project, you will work with a partner to practice building an ETL (Extract, Transform, Load) pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform crowdfunding data. After transforming the data, you will create four CSV files, use the data to create an Entity Relationship Diagram (ERD) and a table schema, and finally upload the CSV file data into a Postgres database.

## Instructions

The instructions for this mini project are divided into the following subsections:

### 1. Create the Category and Subcategory DataFrames

- **Category DataFrame**:
  - Extract and transform the data from the `crowdfunding.xlsx` Excel file to create a category DataFrame.
  - The DataFrame should contain the following columns:
    - `category_id`: Unique identifiers (e.g., cat1, cat2, catn…), where `n` is the number of unique categories.
    - `category`: Category titles from the data.
  - Export the category DataFrame as `category.csv` and save it to your GitHub repository.

- **Subcategory DataFrame**:
  - Extract and transform the data to create a subcategory DataFrame.
  - The DataFrame should contain the following columns:
    - `subcategory_id`: Unique identifiers (e.g., subcat1, subcat2, subcatn…), where `n` is the number of unique subcategories.
    - `subcategory`: Subcategory titles from the data.
  - Export the subcategory DataFrame as `subcategory.csv` and save it to your GitHub repository.

### 2. Create the Campaign DataFrame

- Extract and transform the data from the `crowdfunding.xlsx` Excel file to create a campaign DataFrame.
- The DataFrame should include the following columns:
  - `cf_id`
  - `contact_id`
  - `company_name`
  - `blurb` (renamed to `description`)
  - `goal` (converted to the float data type)
  - `pledged` (converted to the float data type)
  - `outcome`
  - `backers_count`
  - `country`
  - `currency`
  - `launched_at` (renamed to `launch_date` and with the UTC times converted to the datetime format)
  - `deadline` (renamed to `end_date` and with the UTC times converted to the datetime format)
  - `category_id` (with unique identification numbers matching those in the `category_id` column of the category DataFrame)
  - `subcategory_id` (with unique identification numbers matching those in the `subcategory_id` column of the subcategory DataFrame)
- Export the campaign DataFrame as `campaign.csv` and save it to your GitHub repository.

### 3. Create the Contacts DataFrame

Choose one of the following options for extracting and transforming the data from the `contacts.xlsx` Excel data:

- **Option 1: Use Python Dictionary Methods**
  - Import the `contacts.xlsx` file into a DataFrame.
  - Iterate through the DataFrame, converting each row to a dictionary.
  - Extract the dictionary values by using Python list comprehension.
  - Add the extracted values for each row to a new list.
  - Create a new DataFrame containing the extracted data.
  - Split the `name` column into `first_name` and `last_name` columns.
  - Clean the data and export it as `contacts.csv` to your GitHub repository.

- **Option 2: Use Regular Expressions**
  - Import the `contacts.xlsx` file into a DataFrame.
  - Use regular expressions to extract the `contact_id`, `name`, and `email` columns.
  - Create a new DataFrame with the extracted data.
  - Convert the `contact_id` column to the integer type.
  - Split the `name` column into `first_name` and `last_name` columns.
  - Clean the data and export it as `contacts.csv` to your GitHub repository.

### 4. Create the Crowdfunding Database

1. Inspect the four CSV files, and then sketch an ERD of the tables by using [QuickDBDLinks](http://www.quickdatabasediagrams.com/)

2. Use the information from the ERD to create a table schema for each CSV file.

**Note**: Remember to specify the data types, primary keys, foreign keys, and other constraints.

3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

4. Create a new Postgres database, named crowdfunding_db.

5. Using the database schema, create the tables in the correct order to handle the foreign keys.

6. Verify the table creation by running a SELECT statement for each table.

7. Import each CSV file into its corresponding SQL table.

8. Verify that each table has the correct data by running a SELECT statement for each.

