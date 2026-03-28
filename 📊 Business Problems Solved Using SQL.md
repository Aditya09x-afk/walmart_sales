# 📊 Business Problems Solved Using SQL

This project demonstrates how advanced SQL queries can be used to solve real-world business problems.

---

## 🔹 Q1. Payment Method Analysis
Find different payment methods along with:
- Number of transactions  
- Total quantity sold  

---

## 🔹 Q2. Highest Rated Category Per Branch
Identify the highest-rated product category in each branch.  
Display:
- Branch  
- Category  
- Average Rating  

---

## 🔹 Q3. Busiest Day Per Branch
Determine the busiest day for each branch based on:
- Number of transactions  

---

## 🔹 Q4. Quantity Sold by Payment Method
Calculate the total quantity of items sold per payment method.  

---

## 🔹 Q5. Category Rating Analysis by City
For each city and category, determine:
- Average rating  
- Minimum rating  
- Maximum rating  

---

## 🔹 Q6. Profit Analysis by Category
Calculate total profit for each category using:  
**Total Profit = Unit Price × Quantity × Profit Margin**  

Display categories ordered from highest to lowest profit.  

---

## 🔹 Q7. Most Preferred Payment Method Per Branch
Determine the most commonly used payment method in each branch.  

---

## 🔹 Q8. Sales by Time of Day
Categorize sales into:
- Morning  
- Afternoon  
- Evening  

Identify the number of invoices generated in each shift.  

---

## 🔹 Q9. Revenue Decrease Analysis (Year-over-Year)
Identify the top 5 branches with the highest revenue decrease ratio comparing:
- 2023 (Current Year)  
- 2022 (Previous Year)  

---

## 🔹 Q10. Revenue by Time of Day Per Branch
Analyze which time of day generates the highest revenue for each branch by categorizing transactions into:
- Morning  
- Afternoon  
- Evening  

Display:
- Branch  
- Time of Day (Shift)  
- Total Revenue  

---

## 🔹 Q11. Low-Performing Categories (Including Zero Sales)
Identify product categories that generate the least revenue, including those with no sales.  

This ensures even categories with zero transactions are included using **LEFT JOIN**, helping in:
- Detecting underperforming categories  
- Improving inventory decisions  

Display:
- Category  
- Total Revenue (including 0 for no sales)  
