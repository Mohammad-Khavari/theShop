@Checkout
Feature: Checkout
This feature has different checkout scenarios

Scenario: Checkout form
"""
Validate that the checkout form shows
"""

Given I have an empty cart
and I add an item to the cart
When I checkout the item
Then the checkout form should show

Scenario: Approve order
"""
Validate that an order can be approved
"""

Given I have an empty cart
and I add an item to the cart
and I checkout the item
When I fill the checkout form
Then the order should show as approved

Scenario Outline: Order totals
"""
Validate that the order totals are correct
"""

Given I have an empty cart
and I checkout an <item>
When I fill the checkout form
Then the order should show as approved
and the order totals should be <price>

Examples:
|item           |price   |
|Estelle T-shirt|2,799.00|