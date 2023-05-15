Feature: Fill empty information
    Scenario: Open App
        Given "sacffold-tag" loaded
        Then I should see "firstname-tag" appeared
        Then I should see "lastname-tag" appeared
        Then I should see "nickname-tag" appeared

    Scenario: Submit
        When I fill "firstname-tag" field with "P"
        And I fill "lastname-tag" field with "B"
        And I fill "nickname-tag" field with "P"
        And I select the "male-tag" element
        Then I tap the "save-button-tag" element
        Then I should see "report-page-tag" appeared

    Scenario: Empty submit
        When I tap the "save-button-tag" element
        Then I should see "report-page-tag" appeared
