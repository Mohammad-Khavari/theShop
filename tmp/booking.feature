@CBooking
Feature: Booking
This feature has room booking scenarios

Scenario Outline: Check specific booking calculations
"""
Validate that some spefific hotels and room configurations are correct
"""
Given I search for city <city>
and I pick hotel <hotel>
and I pick room <room>
When I book the room
Then the tax rate should be <tax>

|city   |hotel                                       |room                             |tax  |
|Chicago|Hilton Garden Inn Chicago Downtown Riverwalk|1 King Bed                       |0.174|
|Florida|Hampton Inn Spring Hill                     |1 Queen Bed Nonsmoking Quick Look|0.115|