Capybara.app_host = "http://google.com"


caps = Selenium::WebDriver::Remote::Capabilities.new
caps["browserName"] = "chrome"
caps["version"] = "74.0"
caps["enableVNC"] = true
caps[Selenium::WebDriver::Chrome::Options::KEY] = {args: %w(--incognito --start-maximized)}

Capybara.register_driver :chrome do |app|

  Capybara::Selenium::Driver.new(app, browser: :remote, url: "http://18.138.40.17:4444/wd/hub", desired_capabilities: caps)
  end


Capybara.default_driver = :chrome
