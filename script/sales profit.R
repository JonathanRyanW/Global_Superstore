library(xlsx)
order <- read.xlsx("Global Superstore.xls", sheetIndex = 1, header = TRUE)

library(ggplot2)

"The more a product costs the more profit it begets. This might not be true. It
could be that the company still needs to make the price close to the production
cost due to various reasons such as market competitiveness."

ggplot(order, aes(x = Sales, y = Profit)) +
  geom_point() +
  geom_smooth(method = "lm", se = F) +
  theme_bw()

"OMG even the creation of the plot takes noticeable time."

"After looking at this data, it seems that a linear model might not be a good
fit for the data. 

