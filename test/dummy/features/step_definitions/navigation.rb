When /^I visit "(.*?)"$/ do |path|
  visit path
end

Then /^I should see "(.*?)"$/ do |content|
  expect(page).to have_content(content)
end
