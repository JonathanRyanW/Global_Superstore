unique(order$Category)

"There are only 3 Category of products."

unique(filter(order, Category == "Technology")$Sub.Category)
"There are only 4 Sub.Category for the Tech Category, that is Accessories,
Phones, Copiers, and Machines."

unique(filter(order, Category == "Furniture")$Sub.Category)
"There are also only 4 Sub.Category for the Furniture Category, that is Chairs,
Tables, Bookcases, and Furnishings."

unique(filter(order, Category == "Office Supplies")$Sub.Category)
"There are 9 Sub.Category for the Office Supplies Category, that is Binders,
Supplies, Appliances, Storage, Art, Paper, Envelopes, Fasteners, and Labels"