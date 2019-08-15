When(/^I swipe in menu$/) do
  action = Appium::TouchAction.new.swipe(start_x: 0.01, start_y: 0.5, end_x: 0.9, end_y: 0.5, duration: 1000).perform
  action.perform
end

Then(/^I see app menu$/) do
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Area']")
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Cooking']")
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Currency']")
end

And(/^I select "([^"]*)" from menu$/) do |value|
  until exists {find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']")} do
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.2, duration: 1000).perform
  end
  find_element(id: "design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']").click
end

Then(/^I land on "([^"]*)" screen$/) do |value|
  find_element(id: "toolbar").find_element(xpath: "//android.widget.TextView[@text='#{value}']")

end