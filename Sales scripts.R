store<- read.csv("data/Retail sales/stores data-set.csv")
feature<- read.csv("data/Retail sales/Features data set.csv")
sales<- read.csv("data/Retail sales/sales data-set.csv")
library(dplyr)
library(ggplot2)
sales_features<- merge(sales, feature, by= c("Date", "IsHoliday", "Store"))
write.csv(sales_features, "sales.csv")

Sales_records<- merge(sales_features, store, by= "Store")
Sales_records$Date<- as.Date(Sales_records$Date, format= "%d/%m/%Y")

# 1. Sales over time 
Sales_records %>% 
  group_by(Date) %>% 
  summarise(Total_sales= sum(Weekly_Sales)) %>% 
  ggplot(aes(x= Date, y= Total_sales))+
  geom_line(color = "blue")+
  labs(title = "Overall Trend of weekly sales", x = "years", y= "Amount")

# 2. which store has the highest total sales and the lowest total sales
Store_sales<- Sales_records %>% 
  group_by(Store) %>% 
  summarise(Total= sum(Weekly_Sales)) %>% 
  arrange(desc(Total))
head(Store_sales, 1)
tail(Store_sales, 1)

# 3.Sales across store type

StoreTypes_sales<- Sales_records %>% 
  group_by(Type) %>% 
  summarise(Average= mean(Weekly_Sales)) %>% 
  arrange(desc(Average))
StoreTypes_sales %>%
  ggplot(aes(x= Type, y= Average, fill = Type))+
  geom_col()+
  labs(title = "Sales across store types", x= "Type", y = "Average")

# 4. Average weekles sales during holiday vs non-holiday
Sales_records %>% 
  group_by(IsHoliday) %>% 
  summarise(Average= sum(Weekly_Sales)) %>% 
  ggplot(aes(x= IsHoliday, y= Average, fill = IsHoliday))+
  geom_col()+
  labs(title = "Sales", x= "Holiday (True) & Non-Holiday(False)", y = "Average")


# 5.does markdown increase during the holiday and how does it affect sales

Sales_records %>% 
  group_by(IsHoliday) %>% 
  summarise(across(starts_with("MarkDown"), mean, na.rm = TRUE))

ggplot(Sales_records, aes(x = MarkDown2, y = Weekly_Sales, color = IsHoliday)) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm") +
  labs(title = "MarkDown1 vs Weekly Sales by Holiday")


#6. Which markdown type has the strongest positive correlation with the weekleysales
num_vars <- Sales_records %>%
  select(Weekly_Sales, starts_with("MarkDown")) %>%
  na.omit()

cor(num_vars)

#7. Can we predict sales based on the markdowns?
model<- lm(Weekly_Sales~ MarkDown1+MarkDown2+MarkDown3+MarkDown4+MarkDown5, data = Sales_records)
summary(model)

#8.How does fuel price and CPI affect weekly sales?
ggplot(Sales_records, aes(x = Fuel_Price, y = Weekly_Sales)) +
  geom_point(alpha = 0.3) +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Fuel Price vs Weekly Sales")
Fuel_CPI<-lm(Weekly_Sales~ Fuel_Price+CPI, data = Sales_records)
summary(Fuel_CPI)
cor(Sales_records$CPI, Sales_records$Weekly_Sales)

#9. which feature best predict sales?
S.p<- lm(Weekly_Sales~., data = Sales_records)
summary(S.p)

S.p2<- lm(Weekly_Sales~Store+Date+Dept+Temperature+MarkDown3+MarkDown5+Unemployment+Size+Type, data= Sales_records)
summary(S.p2)


