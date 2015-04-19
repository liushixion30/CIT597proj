Given(/^second situation$/) do
  
  @exist = 1
  #pending
  
end


When(/^certain user signed up before$/) do
  
  @visit != 1 
  
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^this user can not sign up again$/) do
  
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
  end
  #pending # Write code here that turns the phrase above into concrete actions
end


