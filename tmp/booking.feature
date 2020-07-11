@Booking
Feature: Booking Management
This feature has room booking scenarios

@Taxes
Scenario Outline: Check specific booking calculations
"""
Validate that tax rate is right for a specific city.
In this scenario we use example data to search based on city, 
hotel name and room, which can be used as a boilerplate for other data-driven tests. 
"""
Given I search for city <city>
and I pick hotel <hotel>
When I book the room <room>
Then the tax rate should be <tax>

|city   |hotel                                       |room                  |tax  |
|Chicago|Hilton Garden Inn Chicago Downtown Riverwalk|1 King Bed            |0.174|
|Florida|Hampton Inn Spring Hill                     |1 Queen Bed Nonsmoking|0.115|
|Seattle|Hilton Bellevue                             |1 King Bed High Floor |0.144|


@Booking
Feature: Booking Management
This feature has room booking scenarios

@Taxes
Scenario Outline: Check specific booking calculations
"""
Validate that tax rate is right for a specific city.
In this scenario we use example data to search based on city, 
hotel name and room, which can be used as a boilerplate for other data-driven tests. 
"""
Given I search for city <city>
and I pick hotel <hotel>
When I book a random room
Then the tax rate should be <tax>

|city   |hotel                                       |room                  |tax  |
|Chicago|Hilton Garden Inn Chicago Downtown Riverwalk|1 King Bed            |0.174|
|Florida|Hampton Inn Spring Hill                     |1 Queen Bed Nonsmoking|0.115|
|Seattle|Hilton Bellevue                             |1 King Bed High Floor |0.144|