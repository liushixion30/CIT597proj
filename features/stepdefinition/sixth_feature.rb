Given(/^third situation$/) do
  
  @existing = 1
  
  
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^password or username does not match$/) do
  
  @name_password = 0
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^tell user invalid name or password$/) do
 
  if @name_password == 0
    @info = "invalid username or password"
  else
    @info = "Welcome"
  end
  
  #pending # Write code here that turns the phrase above into concrete actions
end

