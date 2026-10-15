# female-daily-product-scraping# Female Daily Product Scraping

A Python-based web scraping project focused on collecting, cleaning, and storing beauty product data from Female Daily using Python, Pandas, and PostgreSQL.

## 📌 Project Overview

This project was developed as part of the Comprehensive Data Analytics Program From Hacktiv8 to practice web scraping, data preprocessing, and relational database management.

The project collects beauty product information from Female Daily, processes the extracted data into a structured format, and stores it in PostgreSQL. The database is organized into normalized tables to reduce data redundancy and establish relationships between products and brands.

## 🎯 Objectives

- Collect beauty product data through web scraping.
- Explore and clean raw data using Pandas.
- Convert numerical attributes into appropriate data types.
- Design and implement relational database tables in PostgreSQL.
- Normalize product and brand data to reduce redundancy.

## 🛠️ Tech Stack

### Programming Languages
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)

### Libraries
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Selenium](https://img.shields.io/badge/Selenium-43B02A?style=for-the-badge&logo=selenium&logoColor=white)
![BeautifulSoup](https://img.shields.io/badge/BeautifulSoup-3776AB?style=for-the-badge)

### Database & Tools
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![pgAdmin](https://img.shields.io/badge/pgAdmin-326690?style=for-the-badge&logo=postgresql&logoColor=white)
![Jupyter Notebook](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

## 🔄 Project Workflow

### 1. Data Extraction
Collect beauty product information from Female Daily using web scraping techniques with Selenium and BeautifulSoup.

### 2. Data Exploration & Cleaning
Use Pandas to explore the extracted dataset, inspect data types, clean numerical values, and prepare the data for storage.

### 3. Database Design
Design relational tables in PostgreSQL to separate brand information from product information.

### 4. Data Loading
Load the cleaned CSV dataset into a staging table, populate the `brands` table, and insert product records into the `products` table using SQL.

## 📊 Dataset

The dataset contains product-related attributes, including:

| Column | Description |
|---|---|
| `brands` | Product brand name |
| `product_name` | Product name |
| `discount_price` | Discounted product price |
| `price` | Product price |
| `rating` | Product rating |
| `reviewer` | Number of reviewers |

The cleaned dataset contains 90 rows and 6 columns.

## 🗄️ Database Design

The PostgreSQL database consists of three tables:

- **`staging_products`** — temporarily stores the cleaned data before normalization.
- **`brands`** — stores unique brand names with `brand_id` as the primary key.
- **`products`** — stores product attributes and references brands through `brand_id`.

The `products` table uses a foreign key to establish its relationship with the `brands` table.

### Entity Relationship Diagram

<img width="567" height="557" alt="ERD_Muhammad_rifqi" src="https://github.com/user-attachments/assets/fffe365a-7c62-4dd7-a698-480b00ece974" />

## 👤 Author

**Muhammad Rifqi Sahib**

GitHub: B1ass

---

*This project demonstrates foundational skills in web scraping, data preprocessing, and PostgreSQL database management.*
