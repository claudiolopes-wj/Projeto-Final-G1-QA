require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require 'faker'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time= 10
    config.app_host = "https://magento.nublue.co.uk/"
end
