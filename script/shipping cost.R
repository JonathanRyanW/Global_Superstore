library(xlsx)
order <- read.xlsx("Global Superstore.xls", sheetIndex = 1, header = TRUE)

library(ggplot2)

mean(order$Shipping.Cost)
"We know that there are 4 types of shipping mode. We want to know the mean and
distribution of the shipping costs based on these shipping mode."
tapply(order$Shipping.Cost, order$Ship.Mode, mean)

"Ok so the mean costs are also very logical. The more premium the shipping mode
the more expensive it is. The difference between the first, second, and standard
mode is significant. However the difference between the first class and
the same day modes are very small. This suggests that choosing the same day
mode might be the best move (if possible, as far as i know you can't choose
same day shipping if the distance between you and the seller is too far away),
not the first class."