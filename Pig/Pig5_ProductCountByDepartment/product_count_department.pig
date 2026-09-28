raw = LOAD '/InstacartProject/input/products.csv'
USING PigStorage(',')
AS (
    product_id:chararray,
    product_name:chararray,
    aisle_id:chararray,
    department_id:chararray
);

-- Header remove
products = FILTER raw BY product_id != 'product_id';

-- Convert data types
clean = FOREACH products GENERATE
    (int)product_id AS product_id,
    product_name AS product_name,
    (int)aisle_id AS aisle_id,
    (int)department_id AS department_id;

grp = GROUP clean BY department_id;

result = FOREACH grp GENERATE
    group AS department_id,
    COUNT(clean) AS total_products;

STORE result
INTO '/InstacartProject/output/Pig5_DepartmentCount'
USING PigStorage(',');