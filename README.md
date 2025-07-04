# Weekly Sales Analysis Report
### Author: Daniel Ifenna
### Date: 19th April 2025

## Objective 
This report analyzes the weekly sales of over 45 stores to identify trends and assess the impact of markdowns and holidays on weekly sales.
## Business Questions 
**1. What is the overall trend in sales over time** 
The analysis revealed a seasonal pattern in sales, with noticeable spikes during the holiday such as the Christmas period. However, a noticeable gradual decline occurs after the 1st Quarter of the year. 

**2. Identify stores with the highest and lowest sales**
The store with the highest sales is store **20**  with a total sales of **$301,397,792** and the store with the lowest sales is **33** with a total sum of **$37,160,222**.

**3. How do economic factors(CPI, Unemployment, Fuel Price, Temperature) influence sales?**
- CPI and Unemployment are negatively correlated but have a weak significance in impact on sales. meaning that the increase in either economic factor leads to a slight decline in weekly sales 
- Fuel price is also negatively correlated, but doesn't have a strong significance in the outcome of sales. However, Temperature has a positve impact on the impact of sales. for example, stores sell more sun glasses during summer and more winter coats during winter.

**4. How do markdowns affect weekly sales?**
Markdowns positively influence weekly sales. First of all, in our analysis, we calculated the mean value for all markdowns based on the holiday period represented as *False* and the Non-Holiday period represented as *True*. it was discovered that **Markdown 2** and **Markdown3** have the highest mean value during Non-Holiday sales. As **Markdown1** and **Markdown5** have stronger mean values during the holidays.
A linear regression model was built to test the correlation of each markdown to weekly sales, all have a slight positive relationship as all correlation are less than **0.1**. 

**5. Sales during the Holiday vs sales during Non-Holiday**
The sum of weekly sales across all stores during the holiday sums up to **$505.3 Million**, and during Non-Holiday **$6.23 Billion**

# Recommendation 
Strategic markdowns can boost sales significantly, especially near holidays. External economic indicators alone are not strong predictors, but they add context.

## Sales Forecasting Dashboard
This Power BI dashboard provides a comprehensive view of weekly retail sales across different stores and departments. It highlights key performance metrics and promotional impacts to support data-driven decision-making.

###  Key Features

- **Weekly Sales Trends** – Track overall and department-level sales patterns over time.  
- **Store Performance** – Compare weekly sales across various stores.  
- **Holiday Impact** – Visualize the difference in sales during holiday and non-holiday weeks.  
- **Markdown Analysis** – Explore how price discounts influence weekly sales.  
- **Trend Breakdown** – Interactive visuals to identify drops and spikes in revenue.



###  Download Dashboard File

[Click here to download the Power BI (.pbix) file](Sales%20dashboard.pbix)

### Download PDF REPORT
[Download PDF](Konga-gro%20mart%20Retail%20analysis%20(1).pdf)
