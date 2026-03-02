# 🛒 Walmart Data Analysis: End-to-End SQL + Python Project (P-9)

## 📌 Project Overview
<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/29dba7c4-f71f-4040-afce-c1a89eaedcc6" />



This project is an end-to-end data analysis solution designed to extract critical business insights from Walmart sales data. It leverages **Python for data processing**, **SQL for advanced querying**, and structured analytical techniques to solve real-world business problems.

This project is ideal for aspiring data analysts looking to strengthen their skills in:

* Data cleaning and transformation
* SQL querying and business analysis
* Database integration
* End-to-end data pipeline development

---

## 🚀 Project Pipeline

### 1️⃣ Environment Setup

**Tools Used:** VS Code, Python, MySQL, PostgreSQL

* Created a structured project workspace.
* Organized folders for clean development and workflow management.

---

### 2️⃣ Kaggle API Setup

* Downloaded Kaggle API token (`kaggle.json`) from Kaggle profile settings.
* Placed the file in the local `.kaggle` directory.
* Used:

```bash
kaggle datasets download -d <dataset-path>
```

---

### 3️⃣ Download Walmart Sales Dataset

* Source: Kaggle Walmart Sales Dataset
* Stored raw files inside the `data/` folder.

---

### 4️⃣ Install Required Libraries & Load Data

```bash
pip install pandas numpy sqlalchemy mysql-connector-python psycopg2
```

* Loaded dataset into a Pandas DataFrame.
* Performed initial inspection and transformations.

---

### 5️⃣ Exploratory Data Analysis (EDA)

Used:

* `.info()`
* `.describe()`
* `.head()`

Objectives:

* Understand structure and distributions
* Check data types
* Identify missing values and inconsistencies

---

### 6️⃣ Data Cleaning

* Removed duplicate records
* Handled missing values
* Corrected data types (dates → datetime, prices → float)
* Standardized currency formatting
* Validated cleaned dataset

---

### 7️⃣ Feature Engineering

* Created a new column:

```python
Total_Amount = unit_price * quantity
```

* Enhanced dataset for better SQL aggregation and analysis.

---

### 8️⃣ Load Data into MySQL & PostgreSQL

* Connected using SQLAlchemy
* Created tables automatically
* Inserted cleaned data
* Verified successful data load with test queries

---

### 9️⃣ Advanced SQL Analysis

Solved key business problems using complex SQL queries:

* 📈 Revenue trends by branch & category
* 🏆 Best-selling product categories
* 🏙 Sales performance by city & payment method
* ⏰ Peak shopping hours & buying behavior
* 💰 Profit margin analysis

All queries are documented inside the `sql_queries/` folder.

---

### 🔟 Project Publishing

The project is published on GitHub including:

* `README.md`
* Jupyter Notebooks (if applicable)
* SQL scripts
* Project structure and documentation

---

## 📂 Project Structure

```
|-- data/                     # Raw and cleaned data
|-- sql_queries/              # SQL scripts for analysis
|-- notebooks/                # Jupyter notebooks
|-- README.md                 # Project documentation
|-- requirements.txt          # Python dependencies
|-- main.py                   # Main processing script
```

---

## ⚙️ Requirements

* Python 3.8+
* MySQL
* PostgreSQL

### Python Libraries

* pandas

* numpy

* sqlalchemy

* mysql-connector-python

* psycopg2

* Kaggle API Key

---

## 🏁 Getting Started

Clone the repository:

```bash
git clone <repo-url>
```

Install dependencies:

```bash
pip install -r requirements.txt
```

Set up Kaggle API, download the dataset, and follow the pipeline steps.

---

## 📊 Results & Insights

### 📌 Sales Insights

* Top-performing product categories
* Highest revenue branches
* Most preferred payment methods

### 💵 Profitability

* Most profitable categories
* Location-based margin analysis

### 🧑‍💼 Customer Behavior

* Payment preferences
* Peak shopping hours
* Rating trends

---

## 🔮 Future Enhancements

* Integration with dashboard tools (Power BI / Tableau)
* Add external datasets for deeper insights
* Automate pipeline for real-time analytics

---

## 📜 License

This project is licensed under the MIT License.

---

## 🙏 Acknowledgments

* Data Source: Kaggle Walmart Sales Dataset
* Inspiration: Walmart business case studies on sales and supply chain optimization
