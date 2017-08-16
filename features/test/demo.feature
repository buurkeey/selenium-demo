Feature: Meet-up Demo features

  Scenario: Search-1
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "case"
    And click "gh-btn" button by id
    Then page should contain "results for case" content

  Scenario: Search-2
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "cable"
    And click "gh-btn" button by id
    Then page should contain "results for cable" content

  Scenario: Search-3
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "key"
    And click "gh-btn" button by id
    Then page should contain "results for key" content

  Scenario: Search-4
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "battery"
    And click "gh-btn" button by id
    Then page should contain "results for battery" content

  Scenario: Search-5
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "drum"
    And click "gh-btn" button by id
    Then page should contain "results for drum" content

  Scenario: Search-6
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "model car"
    And click "gh-btn" button by id
    Then page should contain "results for model car" content

  Scenario: Search-7
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "vr"
    And click "gh-btn" button by id
    Then page should contain "results for vr" content

  Scenario: Search-8
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "psp"
    And click "gh-btn" button by id
    Then page should contain "results for psp" content

  Scenario: Search-9
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "movie"
    And click "gh-btn" button by id
    Then page should contain "results for movie" content

  Scenario: Search-10
    Given navigate browser to "https://www.ebay.com/" url
    When fill "gh-ac" with "games"
    And click "gh-btn" button by id
    Then page should contain "results for games" content