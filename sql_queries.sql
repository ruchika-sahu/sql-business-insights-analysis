
 SQL Business Insights Analysis Project
 Dataset: full_Superstore


 1. Total Sales and Total Profit

SELECT
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM full_superstore;

--------------------------------------------------

2. Sales by Region

SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM full_superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

--------------------------------------------------

3. Profit by Region

SELECT
    Region,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM full_superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

--------------------------------------------------

4. Profit by Category

SELECT
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM full_superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

--------------------------------------------------

5. Top 10 Products by Sales

SELECT
    "Product Name",
    ROUND(SUM(Sales),2) AS Total_Sales
FROM full_superstore
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

--------------------------------------------------

6. Top 10 Products by Profit

SELECT
    "Product Name",
    ROUND(SUM(Profit),2) AS Total_Profit
FROM full_superstore
GROUP BY "Product Name"
ORDER BY Total_Profit DESC
LIMIT 10;

--------------------------------------------------

7. Discount Impact on Profit

SELECT
    ROUND(Discount,2) AS Discount_Level,
    ROUND(AVG(Profit),2) AS Avg_Profit,
    COUNT(*) AS Orders
FROM full_superstore
GROUP BY Discount
ORDER BY Discount;

--------------------------------------------------

8. Total Orders

SELECT
    COUNT(DISTINCT "Order ID") AS Total_Orders
FROM full_superstore;

--------------------------------------------------

9. Sales by Customer Segment

SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM full_superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

--------------------------------------------------

10. Top 10 Customers by Sales

SELECT
    "Customer Name",
    ROUND(SUM(Sales),2) AS Total_Sales
FROM full_superstore
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 10;
