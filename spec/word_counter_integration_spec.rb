require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it ('processes the user entry and and returns the word count') do
    visit('/')
    fill_in('sentence', :with => 'Hello my name is Adam, yes it is')
    fill_in('word', :with => 'is')
    click_button('Count your words!')
    expect(page).to have_content('There is 2 instance(s) of is in your inputted sentence')
  end
end
