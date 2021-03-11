library(xlsx)
order <- read.xlsx("Global Superstore.xls", sheetIndex = 1, header = TRUE)

"The order data frame is processed with the README script before any analysis."

library(dplyr)
library(ggplot2)

"We want to know which region has the most sales."

Sales_Region <- data.frame(Sales = tapply(order$Sales, order$Region, sum))
Sales_Region <- arrange(Sales_Region, desc(Sales))
Sales_Region$Region <- row.names(Sales_Region)
Sales_Region <- select(Sales_Region, Region, Sales)
row.names(Sales_Region) <- 1:13

"We can see that most of the sales comes from central, north, and south. I am
very confused as to what these variables mean. "

"The sales values varies very greatly, we are dividing our data into <2500 sales
and >2500 sales"
ggplot(filter(order, Sales <2500), aes(x = Sales)) +
  geom_histogram(aes(fill = Region), binwidth = 100) +
  theme_bw()