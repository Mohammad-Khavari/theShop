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


Scenario Outline: Brand filter parameterized
"""
Checks brand filter functionality
"""

Given I have filter "filter0"
When I add filter two filters "filter1" and "filter2"
Then the items  "filter1", "filter2" and <filter> should show

Examples:
|filter   |
|filter3|
