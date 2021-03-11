library(xlsx)
order <- read.xlsx("Global Superstore.xls", sheetIndex = 1, header = TRUE)

sum(order$Profit < 0)

"It turns out that there are many observations of negative profit. A total of
12544 out of 51290 observation is negative (24.4%). How could this be? How could
so many of our sales results in a loss?"

"We want to know which category is responsible for giving us these negative
profits."

library(dplyr)
table(filter(order, Profit < 0)$Category)
table(filter(order, Profit < 0)$Category) / length(filter(order, Profit < 0)$Category)

"So 55% of the negative profit comes from the office supplies, 24.8% from the
furniture and 19.3% from the technology category. What if we looked deeper by
Sub.Category?"

table(filter(order, Profit < 0)$Sub.Category)

"So pretty much every subcategory of the furniture and office supplies
contributes to negative profits. While only Machines and Phones category from
the tech category is giving negative profits."

"Now we know that the furniture and office supplies category are the ones most
responsible for these negative profits. We can find out the total profits by
subcategory."

tapply(order$Profit, order$Sub.Category, sum)
"Only the Tables Sub.Category is giving negative profits. The rest of the
Sub.Category, even though there are negative profits, "



