Feature: Login

Background:
    * call read('classpath:com/namnh/data/init.feature')

Scenario: Login then logout
    When input(username, standard)
    And input(password, pass_for_all)
    And click(login_button)
    And waitForUrl('https://www.saucedemo.com/inventory.html')
    And match text('{span}Products') == 'Products'
    And waitForEnabled('button[id=react-burger-menu-btn]').click()
    And waitForEnabled('a[id=logout_sidebar_link]').click()
    Then waitForUrl('https://www.saucedemo.com/')
    And match value(username) == ''
    And match value(password) == ''

Scenario: Login with account is locked
    When input(username, locked)
    And input(password, pass_for_all)
    And click(login_button)
    Then match text('h3[data-test=error]') == errm_locked_acc

Scenario: Login with username & password is null
    When input(username, '')
    And input(password, '')
    And click(login_button)
    Then match text('h3[data-test=error]') == errm_username_null

Scenario: Login with password is null
    When input(username, standard)
    And input(password, '')
    And click(login_button)
    Then match text('h3[data-test=error]') == errm_password_null