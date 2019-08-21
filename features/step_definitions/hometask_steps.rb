When(/^I select "([^"]*)" from the left column$/) do |arg|
  find_element(id: "radio_group_from").find_element(xpath: "//android.widget.RadioButton[@text='Sq Kilometre']")
end

Then(/^I click on "([^"]*)" in To field$/) do |value|
  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
end