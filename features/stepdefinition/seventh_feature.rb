Given(/^a user is logged in$/) do
  @existing = 1
end

When(/^the user click logout at top of any page$/) do
  @login = 0
  @visit = @login - 1
end

Then(/^session ended and redirect to sign up page$/) do
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
end