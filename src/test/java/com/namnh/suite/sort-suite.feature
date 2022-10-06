Feature: Sort

Background:
    * call read('classpath:com/namnh/data/init.feature')

Scenario: Sort by default A to Z
    When input(username, standard)
    And input(password, pass_for_all)
    And click(login_button)
    Then waitForUrl('https://www.saucedemo.com/inventory.html')
    * def cookie = driver.cookies
    * print cookie
    And match text(title_list) == 'Products'
    And match text(sort_az) == 'Name (A to Z)'
    * def actual_list = scriptAll(item_name, '_.textContent')
    And match actual_list == az_list