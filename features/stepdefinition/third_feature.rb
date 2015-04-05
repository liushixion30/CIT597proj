Given(/^a farmers market$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  # assume min num of farmers market is 1 and max num is 100
  @num_of_market = rand(1...100)
  @n = @num_of_market
  @deleted = 0
end

When(/^this farmers market is discarded$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  @num_of_market = @num_of_market - 1
  @deleted = @deleted + 1
end

Then(/^user will not see this market on the page$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  @num_of_market == @n-1 && @deleted == 1
  
end
