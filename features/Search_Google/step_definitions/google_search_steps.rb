Given(/^I Open Google Home Page$/) do
  puts "Given"
  visit('/')
  # @driver = Selenium::WebDriver.for :chrome
  # @driver.navigate.to "http://google.com"
end

When(/^I Search for "([^"]*)"$/) do |keyword|
  puts "When #{keyword}"
  find(:field, "q").send_keys keyword, :enter
  # find(:xpath, "//input[@name='q']").send_keys keyword, :enter
  # fill_in('q', :with => keyword)
  # element = @driver.find_element(name: 'q')
  # element.send_keys keyword
  # element.submit

end

Then(/^I should get first data contains "([^"]*)"$/) do |keyword|
  puts "Then #{keyword}"
  expect(page).to have_content keyword.downcase
  # puts @driver.title
  # @driver.quit
end