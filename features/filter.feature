@Filter
Feature: Filter
This feature has different filter scenarios

Scenario Outline: Brand filter
"""
Checks brand filter functionality
"""

Given I have no filters activated
When I add filter <filter>
Then the items <items> should show

Examples:
|filter   |items                           |
|Freecultr|[Freecultr Tee, Freecultr Shirt]|
|Estelle  |[Estelle T-shirt]               |
