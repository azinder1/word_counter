require('pry')
require('rspec')
require('word_counter')

describe('the word count path', {:type => :feature}) do
  it('processes the user entry and and returns the word count') do
    visit('/')
    fill_in('', :with => '')
    click_button('')
    expect(page).to have_content('')
  end
end

describe('String#word_counter') do
  it "" do
    expect
  end
  # it "" do
  #   expect
  # end
  # it "" do
  #   expect
  # end
end
