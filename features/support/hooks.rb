Capybara.app_host = "http://google.com"


caps = Selenium::WebDriver::Remote::Capabilities.new
caps["browserName"] = "chrome"
caps["version"] = "74.0"
caps["enableVNC"] = true
caps[Selenium::WebDriver::Chrome::Options::KEY] = {args: %w(--incognito --start-maximized)}

remote_caps = {browser: :remote, url: "http://18.138.40.17:4444/wd/hub", desired_capabilities: caps}
local_caps = {browser: :chrome, desired_capabilities: caps}

use_remote = false

Capybara.register_driver :chrome do |app|

  r = use_remote ? remote_caps : local_caps
  Capybara::Selenium::Driver.new(app, r)
  end


Capybara.default_driver = :chrome
