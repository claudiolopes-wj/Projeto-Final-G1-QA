require 'capybara'
require 'capybara/cucumber'
require 'report_builder'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time=10
    config.app_host = "http://moda.magento.local/"
end