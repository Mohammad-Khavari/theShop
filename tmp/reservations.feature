@Checkout
Feature: Reservations
This feature has different room reservation scenarios

Scenario: Check order summary format
"""
Validate that the order summary is correct

https://www.hilton.com/en/book/group/rooms/?arrivalDate=20200919&ctyhocn=ABQEMES&departureDate=20200920&numRooms=10

"""

Given that I am on the 10+ Rooms page
When I want to understand the rooms I have selected and estimated cost
Then display the Order summary on the right rail
AND display each line item with two decimal points, even if it ends in .00
AND include commas every 3 digits (i.e. 5,678,900)

Scenario: Check room rate calculations
"""
Validates room rates and tax calculations

https://www.hilton.com/en/book/reservation/rooms/?arrivaldate=20200107&ctyhocn=HNLWAHF&departuredate=20200108&numRooms=3&redeemPts=true&room1NumAdults=1&room2NumAdults=1&room3NumAdults=1”
"""

Given I visit "https://www.hilton.com/en/book/reservation/rooms/?arrivaldate=20200107&ctyhocn=HNLWAHF&departuredate=20200108&numRooms=3&redeemPts=true&room1NumAdults=1&room2NumAdults=1&room3NumAdults=1"
When I click on "flexible dates button”
And I find the best available dates
And click on the rates
Then I choose random rooms
And expects rates and taxes calculation are correct
When I visit payment page
Then provide user details