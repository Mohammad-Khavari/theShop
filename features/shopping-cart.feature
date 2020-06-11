Feature: Shopping Cart
This feature has different shopping cart scenarios

Scenario Outline Validate cart content
"""
Validates the content in the carts
"""

Given I have an empty cart
When I add an item to the cart
Then the cart should have the item

Scenario Outline Validate cart content and total
"""
Validates the content in the cart including total price
"""

Given I have an empty cart
When I add an item <item> to the cart
Then the cart should have the item <item>
and the cart totals should be <price>

Examples:
|item   |price|
|jacket|1999|
|jblouse|1999|
