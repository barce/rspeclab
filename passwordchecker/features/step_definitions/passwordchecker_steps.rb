class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

Given /^I am not yet checking$/ do
end

When /^I start a new cracker$/ do
  cracker = Passwordchecker::Cracker.new(output)
  cracker.start
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end


Given /^the password has a "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I submit a "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the result should be its "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

