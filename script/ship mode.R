library(xlsx)
order <- read.xlsx("Global Superstore.xls", sheetIndex = 1, header = TRUE)

unique(order$Ship.Mode)
table(order$Ship.Mode)
table(order$Ship.Mode) / length(order$Ship.Mode)

"Ok so there are only 4 types of shipping mode. That is Same Day, Standard class,
Second Class, First Class. Most of the products were shipped using the standard
class mode followed by second clas, first class, same day."

