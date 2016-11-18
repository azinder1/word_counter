require('pry')
require('rspec')
require('word_counter')

describe('String#word_counter') do
  it "can count the occurences of a single word" do
    expect("cat".word_counter("cat")).to(eq("There are <span class='count'>1</span> instance(s) of '<span class='user_word'>cat</span>' in your inputted sentence"))
  end
  it "can count the occurences of a single word within a sentence" do
    expect("The cat went to the cat town".word_counter("cat")).to(eq("There are <span class='count'>2</span> instance(s) of '<span class='user_word'>cat</span>' in your inputted sentence"))
  end
  it "can count the occurences of a single word within a sentence including casing and with symbols included" do
    expect("Cat went to the cat, town".word_counter("cat")).to(eq("There are <span class='count'>2</span> instance(s) of '<span class='user_word'>cat</span>' in your inputted sentence"))
  end
end
