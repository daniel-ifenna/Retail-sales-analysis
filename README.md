# KongaGro Mart – Retail Sales Analysis  
**Author:** Daniel Ifenna  
**Date:** April 2025  

---

## Executive Summary  
This project provides an in-depth analysis of weekly sales data across 45+ KongaGro Mart stores. Leveraging exploratory data analysis and interactive Power BI dashboards, the study highlights key factors influencing sales performance — including seasonality, markdown effectiveness, and economic variables. The insights aim to support data-driven decisions that optimize store operations, improve marketing outcomes, and enhance profitability.

---

## Project Objectives  
- Analyze weekly sales trends, especially seasonal and holiday-related spikes  
- Identify top- and bottom-performing stores based on total sales  
- Evaluate the influence of economic indicators (CPI, unemployment, fuel price, temperature)  
- Assess the impact of markdown strategies during holiday and non-holiday periods  
- Compare weekly sales performance between holiday and non-holiday periods  
- Recommend strategic actions to drive revenue growth and efficiency  

---

## Key Insights

### 1. Sales Trends  
- Strong seasonal spikes in sales are observed around major holidays (e.g. Christmas)  
- A gradual decline in sales typically follows Q1, suggesting a need for targeted promotions during off-peak periods  

### 2. Store Performance  
- **Highest Sales:** Store 20 – \$301,397,799  
- **Lowest Sales:** Store 33 – \$37,160,222  

### 3. Economic Drivers  
- CPI and unemployment show a weak negative correlation with weekly sales  
- Fuel price also has a weak negative influence  
- Temperature shows a modest positive relationship with product-specific sales (e.g., sunglasses in summer, coats in winter)  

### 4. Markdown Effectiveness  
- Markdowns overall have a slight positive impact on sales  
- **Markdown 2 and 3** perform better during non-holiday weeks  
- **Markdown 1 and 5** are more effective during holiday weeks  
- All correlations with weekly sales are positive but less than 0.1  

### 5. Holiday vs. Non-Holiday Sales  
- **Holiday Weeks:** \$505.3M total (7.5%)  
- **Non-Holiday Weeks:** \$6.23B total (92.5%)  
- Despite fewer holiday weeks, weekly sales are significantly higher during holidays  

---

## Recommendations  
- Leverage Markdown 2 and 3 during off-seasons; prioritize Markdown 1 and 5 for holiday periods  
- Adjust inventory strategy based on temperature trends and seasonal product demand  
- Increase inventory and marketing focus during holidays, and strategically restock based on season after peak periods  
- Regularly audit store performance and set measurable targets for each location  
- Investigate employee satisfaction and operational workflows at low-performing stores to uncover hidden performance drivers  

---

## Deliverables  
- R scripts for data cleaning and analysis  
- Power BI dashboard for interactive visualization  
- Business summary report with actionable insights  

---

## Repository Contents  
- `/dashboard preview`:![](Screenshot%202025-07-06%20191450.png) 
- `/scripts`: R scripts used for preprocessing and analysis  
- `/dashboard`:  [Click here to download the Power BI (.pbix) file](DASHBOARD.pbix)
- `KongaGro_Report.md`: Final analysis summary [Report](retail%20sales%20report.docx)
