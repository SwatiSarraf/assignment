Feature: Configure a new vehicle online and get guaranteed, competitive price quotes
  from upto 3 verified dealers in zip area.

  Scenario: Make Selection Page for any make with any model
    Given I am on "https://autoblog.truecar.com" url
    When I filter car make as "Audi" 
    When I filter car model as "A3" 
    When I enter wrong zip code as -1
    Then an error message should be shown

  Scenario: Make Selection Page for any make with any model
    Given I am on "https://autoblog.truecar.com" url
    When I filter car make as "BMW" 
    When I filter car model as "3 Series" 
    When I enter wrong zip code as 0
    Then an error message should be shown

  Scenario: Make Selection Page for any make with any model
    Given I am on "https://autoblog.truecar.com" url
    When I filter car make as "Lexus" 
    When I filter car model as "GS 350" 
    When I enter wrong zip code as 3421
    Then an error message should be shown

  Scenario: Make Selection Page for lincoln with MKS
    Given I am on "https://autoblog.truecar.com" url
    When I filter car make as "Lincoln" 
    When I filter car model as "MKS" 
    When I enter zip code as 90230
    Then a new car price page should be loaded

#  Scenario: Make Selection Page for lincoln with MKS
#    Given I am on the "https://autoblog.truecar.com"
#    When I filter car make as "Lincoln" 
#    When I filter car model as "MKS" 
#    When I enter zip code as 90230
