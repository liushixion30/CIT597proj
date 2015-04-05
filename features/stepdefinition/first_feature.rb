
Given(/^a farmers market page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  @view = 'market_index'
  @comment = ''
end

When(/^I write comment$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  @comment = 'new text'
end

Then(/^I can see it on the page$/) do
 # Write code here that turns the phrase above into concrete actions
   @commment == 'new text' && @view = 'market_index'
end

