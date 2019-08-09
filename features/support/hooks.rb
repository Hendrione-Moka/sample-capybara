Capybara.app_host = "http://google.com"

Capybara.register_driver :chrome do |app|

  data = { Selenium::WebDriver::Chrome::Options::KEY => {args: %w(--incognito --start-maximized --headless)}}
  puts "options"
  puts data

  Capybara::Selenium::Driver.new(app,
                                 :browser => :chrome,
                                 :desired_capabilities => data
  )
  end


Capybara.default_driver = :chrome
