/*
=======================================================================================================================
Milestones 1

Nama  : MUHAMMAD RIFQI SAHIB
Batch : CODA-RMT-021

Program ini dibuat untuk mengerjakan milestones 1
========================================================================================================================
*/


-------MEMBUAT TABLE STAGING--------------------------------------------------------------------------------------------
CREATE TABLE staging_products (
    brands TEXT,
    product_name TEXT,
    discount_price NUMERIC,
    price NUMERIC,
    rating NUMERIC,
    reviewer INT
);

COPY staging_products
(
    brands,
    product_name,
    discount_price,
    price,
    rating,
    reviewer
)
FROM 'C:\temp\female_daily_clean.csv'
DELIMITER ','
CSV HEADER
NULL 'null';

CREATE TABLE brands (
    brand_id SERIAL PRIMARY KEY,
    brand_name VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO brands (brand_name)
SELECT DISTINCT brands
FROM staging_products
ORDER BY brands;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    brand_id INT NOT NULL,
    product_name TEXT NOT NULL,
    discount_price NUMERIC,
    price NUMERIC,
    rating NUMERIC,
    reviewer INT,
    CONSTRAINT fk_brand
        FOREIGN KEY (brand_id)
        REFERENCES brands(brand_id)
);

INSERT INTO products (
    brand_id,
    product_name,
    discount_price,
    price,
    rating,
    reviewer
)
SELECT
    b.brand_id,
    s.product_name,
    s.discount_price,
    s.price,
    s.rating,
    s.reviewer
FROM staging_products s
JOIN brands b
ON s.brands = b.brand_name;

SELECT * FROM staging_products;
SELECT * FROM brands;
SELECT * FROM products;