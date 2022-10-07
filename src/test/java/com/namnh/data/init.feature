Feature: First Initialization

Scenario: Init
    * call read('classpath:com/namnh/elements/login-elements.feature')
    * call read('classpath:com/namnh/elements/home-elements.feature')
    * call read('classpath:com/namnh/data/login-data.feature')
    * call read('classpath:com/namnh/data/login-errm.feature')
    * call read('classpath:com/namnh/data/sort-data.feature')
    * configure driver = { type: 'chrome', start: false, showDriverLog: true }
    * driver url
