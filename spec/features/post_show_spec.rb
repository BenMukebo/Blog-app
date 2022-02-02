require 'rails_helper'

RSpec.describe 'Post Show Page Features', type: :feature, js: true do
  before(:all) do
    # Selenium::WebDriver.logger.level = :debug
    Capybara.current_driver = :headless_chrome
    Capybara.javascript_driver = :headless_chrome
  end
end