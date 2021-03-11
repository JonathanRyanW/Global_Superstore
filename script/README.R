library(xlsx)
order <- read.xlsx("Global Superstore.xls", sheetIndex = 1, header = TRUE)

"The data reading process takes sooo long. Don't ever delete the order variable.
Always remember to save the Rdata."

#Finding out the variables
names(order)

#Finding any NA
any(is.na(order))

"Ok so there are NAs in the data"

sapply(order, function(x) {sum(is.na(x))})

"Oh this is good news. It turns out that only the postal code variable has NAs.
By the way the majority of the value of postal code turns out to be NAs. That
is 41296 out of 51290 (80.5%)"

#Finding all the classes of the variables
sapply(order, class)

"The order date and the ship date is Date class! Good news! Now we don't have
to convert it ourselves. The city state and country should be categorical
but there is simply too many unique observations to make it categorical. We have
to reduce the number by re-categorizing but there are 3600+ cities, 1000+ states,
and 147 country. An arduous task.

The country variable can be reduced though. We can recategorize by continent
instead. If we can do this. We can get meaningful information about which
continent contributes most to our sales. If we haven't already we can expand
to key countries in this continent! Oh but it turns out that this is already
been done. They have already created the Region variable. Very similar to our
idea. 

The category and sub category are character variables. They should be factors.
We can change them now since the number of unique category and sub category is
not that big (Only 3 Category and 17 Sub.Category).

The rest of the variables are already in their correct classes."

order$Category <- as.factor(order$Category)
order$Sub.Category <- as.factor(order$Sub.Category)

"Out of 24 variables available, 9 of them are meaningless to analyze:
- Row.ID
- Order.ID
- Customer.ID
- Customer.Name
- City
- State
- Postal.Code
- Product.ID
- Product.Name

Thus, we will do various analysis with the remaining 15."