require 'capybara'

Capybara.app_host = 'http://diogomelo.net'
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.run_server = false
Capybara.current_session.visit('http://diogomelo.net')
