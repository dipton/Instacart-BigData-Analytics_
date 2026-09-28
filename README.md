# Instacart Market Basket Big Data Analytics

A Big Data Analytics project that analyzes the **Instacart Market Basket Analysis Dataset** using **Apache Hadoop**, **Java MapReduce**, and **Apache Pig**. This project was developed as part of a university Big Data Analytics Laboratory course and demonstrates distributed data processing on a Hadoop single-node cluster.

---

## Project Overview

The Instacart Market Basket Analysis dataset was uploaded to the Hadoop Distributed File System (HDFS) and analyzed using Java MapReduce programs and Apache Pig scripts. The project demonstrates how large-scale transaction data can be processed efficiently in a distributed environment.

The project performs the following analyses:

* Count orders by day of the week (Java MapReduce)
* Count orders by hour of the day (Java MapReduce)
* Identify the most purchased products (Java MapReduce)
* Extract reordered products (Apache Pig)
* Find products added first to the cart (Apache Pig)
* Generate top purchased products (Apache Pig)
* Analyze weekend orders (Apache Pig)
* Count products by department (Apache Pig)

---

## Hadoop Architecture

The following figure illustrates the Hadoop ecosystem used in this project.

![Hadoop Architecture](Images/hadoop_architecture.png)

---

## Project Workflow

The following diagram shows how the Instacart dataset flows through HDFS, Java MapReduce, and Apache Pig before generating distributed outputs.

![Instacart Workflow](Images/instacart_workflow.png)

---

## Technologies Used

* Apache Hadoop (HDFS)
* Java MapReduce
* Apache Pig
* Windows Single-Node Hadoop Cluster

---

## Repository Structure

```text
Instacart-BigData-Analytics/
│
├── Dataset/
│   ├── products.csv
│   └── README.txt
│
├── MapReduce/
│   ├── MR1_OrdersByDay/
│   ├── MR2_OrdersByHour/
│   └── MR3_TopPurchasedProducts/
│
├── Pig/
│   ├── Pig1_ReorderedProducts/
│   ├── Pig2_FirstCartProducts/
│   ├── Pig3_TopPurchasedProducts/
│   ├── Pig4_WeekendOrders/
│   └── Pig5_ProductCountByDepartment/
│
├── Outputs/
│   ├── MR1_OrdersByDay/
│   ├── MR2_OrdersByHour/
│   ├── MR3_TopPurchasedProducts/
│   ├── Pig1_ReorderedProducts/
│   ├── Pig2_FirstCartProducts/
│   ├── Pig3_TopPurchasedProducts/
│   ├── Pig4_WeekendOrders/
│   └── Pig5_DepartmentCount/
│
├── Report/
│
├── Images/
│   ├── hadoop_architecture.png
│   └── instacart_workflow.png
│
├── README.md
└── .gitignore
```

---

## Dataset Description

The project uses the **Instacart Market Basket Analysis Dataset**, a real-world retail transaction dataset containing customer orders, products, aisles, and departments. The dataset is suitable for Hadoop-based distributed processing and market basket analysis.

Key dataset files include:

| File                        | Description                                             |
| --------------------------- | ------------------------------------------------------- |
| `orders.csv`                | Customer order history and order sequence information.  |
| `products.csv`              | Product information linked with aisles and departments. |
| `order_products__prior.csv` | Products purchased in previous customer orders.         |
| `order_products__train.csv` | Training order-product data.                            |
| `aisles.csv`                | Grocery aisle information.                              |
| `departments.csv`           | Product department information.                         |

---

## Typical Analytics Workflow

1. Upload the dataset to HDFS.
2. Process transactional data using Java MapReduce.
3. Execute Apache Pig scripts for:

   * Reordered Products
   * First Cart Products
   * Top Purchased Products
   * Weekend Orders
   * Product Count by Department
4. Store generated results in the `Outputs` directory.
5. Interpret the results to understand customer purchasing behavior.

---

## Learning Outcomes

This project demonstrates:

* Distributed data processing with Hadoop.
* Java MapReduce implementation.
* Apache Pig scripting for large-scale data analysis.
* Customer purchasing behavior analysis.
* Big data workflow execution on a Hadoop single-node cluster.

---

## Notes

* The repository contains the Instacart dataset, Hadoop MapReduce programs, Apache Pig scripts, generated outputs, and supporting project documentation.
* The architecture and workflow diagrams illustrate how data flows through the Hadoop ecosystem.
* The project serves as a practical implementation of Big Data Analytics concepts using the Instacart Market Basket Analysis dataset.

---

## License

This repository is intended for educational and academic purposes.

