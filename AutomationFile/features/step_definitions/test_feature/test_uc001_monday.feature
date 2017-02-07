Feature: test tick task app

  @Test @Monday @UC001 
  Scenario: Install and open the app successful

  	Given I see the guide page
  	Then I agree the permission
  	And I take a screenshot
  	Then I drag from 1000:0 to 0:0 moving
  	Then I drag from 1000:0 to 0:0 moving
  	Then I drag from 1000:0 to 0:0 moving
    When I see "开始记账"
    