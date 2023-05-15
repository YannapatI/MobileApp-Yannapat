Feature: Washing Dish


    Scenario: There are no dish
        Given There're no dirty dishes
        When I walk to sink
        Then I should see the sink clean

    Scenario: I have only paper dish
        Given I don't have any dishes
        And I buy 10000 of paper dish
        When I use paper dish to eat 
        Then I should see the sink clean

    Scenario: There're dirty dish in the sink
        Given I have 10 dirty dishes in the sink
        And I already have sponge with dish soap
        When I wash the dish
        And I rinse the dish
        And I put it on the drying rack
        Then I should see the sink clean
        And There are 10 clean dishes on the drying rack

    Scenario: I wash the dish with my dish washer
        Given I have a automatic model Y tesla dish washer
        And I have 20 dishes in the sink
        