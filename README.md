# Description

Depot is a shopping cart application for Rails 5.
Does the world need another shopping cart application?
Probably not.

Then why develop one?
Because it is more than a simple project and showcases many features needed for other web applications.

# Use Cases
Two roles:
 1. Buyer
 2. Seller

The buyer uses Depot to browse products we have to sell, select some of them for purchase, and supplies the information needed to create an order.
The seller uses Depot to maintain a list of products to sell, to determine the orders that are awaiting shipping, and to mark orders as shipped.

# Data

Product:
 * name
 * description
 * image
 * price

Seller Details:
 * login name
 * password

Cart:
 * ?

Order:
 * buyer details
 * payment details
 * shipping status

Line Item:
 * product
 * quantity
 * price -- price is duplicated here from "Product": When one changes the product's price, it should not affect any items in a shopping cart

