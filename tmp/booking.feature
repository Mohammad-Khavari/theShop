@Booking
Feature: Booking Management
This feature has room booking scenarios

@Taxes
Scenario Outline: Check specific booking calculations
"""
Validate that tax rate is right for a specific city, hotel and room configurations
"""
Given I search for city <city>
and I pick hotel <hotel>
When I book the room <room>
Then the tax rate should be <tax>

|city   |hotel                                       |room                  |tax  |
|Chicago|Hilton Garden Inn Chicago Downtown Riverwalk|1 King Bed            |0.174|
|Florida|Hampton Inn Spring Hill                     |1 Queen Bed Nonsmoking|0.115|
|Seattle|Hilton Bellevue                             |1 King bed Hogh Floor |0.101|