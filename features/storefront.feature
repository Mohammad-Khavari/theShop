@Browse
Feature: Storefront
This feature has different browse scenarios

Scenario: Browse item details
"""
Browse an item in the store
"""
Given I am at the store
When I click on an item
Then the item description should show

Scenario Outline: Browse item details from data
"""
Browse an item in the store data-driven
"""

Given I am at the store
When I click on an item <item>
Then the item description should be <description>

Examples:
|item                      |description                              |
|John Jacobs Casual Trouser|This is a Casual Trouser from John Jacobs|
