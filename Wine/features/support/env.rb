require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require 'faker'
require 'rspec'
require 'pry'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time=10
    config.app_host = "http://wine.magento.local/" #site que vai ser aberto durante os teste
end

EL = YAML.load_file('./data/elm.yml')