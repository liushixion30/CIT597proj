
Given(/^a situation$/) do
  
  @exist = 1
  @name_password = "can not be blank"
  #pending
  
end

When(/^certain user first time visit this page$/) do
  
  @visit = 1
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^this user can sign up and get to login page$/) do
  
  #
  
  @login = 0
  if @visit == 1 and @name_password != nil
    @visit = @visit + 1
    @login = 1
  else
    if @name_password == nil
      @login = 0
    else 
    @login = 2
    end
  # pending # Write code here that turns the phrase above into concrete actions
  end
end